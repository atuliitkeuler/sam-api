import json
import psycopg2
from psycopg2 import sql

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}


def lambda_handler(event, context):
    # body = json.loads(event.get("body", "{}"))
    #print(event)
    emch_number = event["queryStringParameters"]["emch"]
    
    with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:
                dbquery = """
                            SELECT emch FROM vehicles WHERE emch=%s
                            """
                cur.execute(dbquery,(emch_number,))
                vehicles_registered = cur.fetchall()
                if vehicles_registered==[]:
                    msg={
                        "message":False
                    }
                else:
                    msg = {
                        "message": True
                    }

    return {
            "statusCode": 200, 
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Headers":'*',
            "Access-Control-Allow-Methods": "*",
            "body": json.dumps(msg)}
