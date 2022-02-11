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

def verify_function(muff_cup_id):
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:

            dbquery=""" 
                        SELECT muff_cup FROM powertrains WHERE powertrains.muff_cup IN (SELECT id FROM muff_cups WHERE muff_cup_id= %s )
                    """
            cur.execute(dbquery,(muff_cup_id,))
            muff_cup_available=cur.fetchall()
            print(muff_cup_available)
            if muff_cup_available!=[]:
                return [False,"muff_cup is present in another vehicle"]
            
            
            
            dbquery_2="""
                          SELECT muff_cup_id FROM muff_cups WHERE muff_cup_id=%s
                      """
            cur.execute(dbquery_2,(muff_cup_id, ))
            registered_muff_cup=cur.fetchall()
            if registered_muff_cup==[]:
                return [False,"There is no muff_cup with such id"]
            return [True]

