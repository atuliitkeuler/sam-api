import json
import psycopg2
from psycopg2 import sql
from verify_muff_cup import verify_function

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}
#input will be muff_cup_id and emch
def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    muff_cup_id = body["muff_cup_id"]

    verification=verify_function(muff_cup_id)
    if verification[0]:
        with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:

                dbquery = """
                            UPDATE powertrains SET muff_cup=(sub_query_2.id) FROM 
                            ( SELECT power_train FROM vehicles WHERE emch=%s ) AS sub_query_1,
                            (SELECT id FROM muff_cups WHERE muff_cup_id= %s ) AS sub_query_2
                            WHERE powertrains.id= sub_query_1.power_train
                                
                            """
                cur.execute(dbquery, (emch_number,muff_cup_id))
                conn.commit()

        msg = {
            "message": "muff_cup with muff_cup id: %s added successfully in vehicle with following EMCH number: %s"
            % (muff_cup_id, emch_number)
        }
    else:
        msg={
            "message":verification[1]
        }

    return {"statusCode": 200, "body": json.dumps(msg)}
