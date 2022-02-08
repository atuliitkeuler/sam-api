import json
import psycopg2
from psycopg2 import sql


#input will be emch as emch_number
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
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:
            dbquery = sql.SQL("INSERT INTO vehicles(emch) VALUES (%s)")
            cur.execute(dbquery, (emch_number,))
            conn.commit()


    msg = {
        "message": "Vehicle Added Successfully with following EMCH number: %s"%(emch_number)
    }

    return {
        "statusCode": 200,
        "body": json.dumps(msg)
    }
