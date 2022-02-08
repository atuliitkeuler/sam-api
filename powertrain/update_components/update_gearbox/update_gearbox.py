import json
import psycopg2
from psycopg2 import sql
from verify_gearbox import verify_function

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}
# will take emch and gearbox_id as input
# issue i am facing is ki jaisi hi request dobara bhejta hu ik or row create ho jati h with sam e values
#the solution is ki m jo subassembly me pehle components aaenge unko m unique kr du 


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    gearbox_id = body["gearbox_id"]
    print(emch_number, gearbox_id)

    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:
            verification=verify_function(gearbox_id)
            if verification[0]:

                dbquery="""
                            UPDATE powertrains 
                            SET gearbox=sub_query_1.id FROM
                            (SELECT id FROM gearboxes WHERE gearbox_id=%s) AS sub_query_1,
                            (SELECT power_train FROM vehicles WHERE emch=%s) AS sub_query_2
                            WHERE powertrains.id=sub_query_2.power_train
                        """

                cur.execute(dbquery,(gearbox_id,emch_number,))
                conn.commit()

                msg = {
                    "message": "GearBox with gearbox id: %s updated successfully in vehicle with following EMCH number: %s"
                    % (gearbox_id, emch_number)
                }
            else:
                msg={"message":verification[1]}

    return {"statusCode": 200, "body": json.dumps(msg)}
