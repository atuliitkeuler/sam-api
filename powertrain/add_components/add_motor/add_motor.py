import json
import psycopg2
from psycopg2 import sql
from verify_motor import verify_function

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}
#input will be motor_id and emch
def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    motor_id = body["motor_id"]

    verification=verify_function(motor_id)
    if verification[0]:
        with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:

                dbquery = """
                            UPDATE powertrains SET motor=(sub_query_2.id) FROM 
                            ( SELECT power_train FROM vehicles WHERE emch=%s ) AS sub_query_1,
                            (SELECT id FROM motors WHERE motor_id= %s ) AS sub_query_2
                            WHERE powertrains.id= sub_query_1.power_train
                                
                            """
                cur.execute(dbquery, (emch_number,motor_id))
                conn.commit()

        msg = {
            "message": "Motor with motor id: %s added successfully in vehicle with following EMCH number: %s"
            % (motor_id, emch_number)
        }
    else:
        msg={
            "message":verification[1]
        }

    return {"statusCode": 200, "body": json.dumps(msg)}
