import json
import psycopg2
from psycopg2 import sql
from verify_emch_number import verify_emch_number_function


#input will be emch as emch_number
#needs to handle error
database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}

def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body['emch']
    if verify_emch_number_function(emch_number):
        with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:
                dbquery = sql.SQL("INSERT INTO vehicles(emch) VALUES (%s)")
                cur.execute(dbquery, (emch_number,))
                conn.commit()


        msg = {
            "message": "Vehicle Added Successfully with following EMCH number: %s"%(emch_number)
        }
    else:
        msg={
            "message": "Vehicle Already Registered"
        }

    return {
        "statusCode": 200,
        'headers': {
            'X-Custom-Header': "application/json, text/plain",
            'Content-Type': "application/json, text/plain",
            'Access-Control-Allow-Headers': "content-type,X-Requested-With",
            'Access-Control-Allow-Origin': "http://localhost:4004",
            'Access-Control-Allow-Methods': "GET, POST, OPTIONS, PUT, PATCH, DELETE"
        },
        "body": json.dumps(msg)
    }
