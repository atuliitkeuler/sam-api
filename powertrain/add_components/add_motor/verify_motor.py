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

def verify_function(motor_id):
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:

            dbquery=""" 
                        SELECT motor FROM powertrains WHERE powertrains.motor IN (SELECT id FROM motors WHERE motor_id= %s )
                    """
            cur.execute(dbquery,(motor_id,))
            motor_available=cur.fetchall()
            print(motor_available)
            if motor_available!=[]:
                return [False,"motor is present in another vehicle"]
            
            
            
            dbquery_2="""
                          SELECT motor_id FROM motors WHERE motor_id=%s
                      """
            cur.execute(dbquery_2,(motor_id, ))
            registered_motor=cur.fetchall()
            if registered_motor==[]:
                return [False,"There is no motor with such id"]
            return [True]

