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

def verify_emch_number_function(emch_number):
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:

            dbquery="SELECT * FROM vehicles WHERE emch=%s"

            cur.execute(dbquery,(emch_number,))
            registered_vehicles=cur.fetchall()

            if registered_vehicles==[]:
                return True
            else:
                return False