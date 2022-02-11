import json
import psycopg2
from psycopg2 import sql
from verify_vehicle_harness import verify_function

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}
# will take emch and vehicle_harness_id as input
# issue i am facing is ki jaisi hi request dobara bhejta hu ik or row create ho jati h with sam e values
#the solution is ki m jo subassembly me pehle components aaenge unko m unique kr du 


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    vehicle_harness_id = body["vehicle_harness_id"]
    print(emch_number, vehicle_harness_id)

    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:
            verification=verify_function(vehicle_harness_id)
            if verification[0]:

                dbquery="""
                            UPDATE vehicles
                            SET vehicle_harness=sub_query.id FROM
                            (SELECT id FROM vehicle_harnesses WHERE vehicle_harness_id=%s) AS sub_query
                            WHERE vehicles.emch=%s
                        """

                cur.execute(dbquery,(vehicle_harness_id,emch_number,))
                conn.commit()

                msg = {
                    "message": "vehicle_harness with vehicle_harness id: %s updated successfully in vehicle with following EMCH number: %s"
                    % (vehicle_harness_id, emch_number)
                }
            else:
                msg={"message":verification[1]}

    return {"statusCode": 200, "body": json.dumps(msg)}
