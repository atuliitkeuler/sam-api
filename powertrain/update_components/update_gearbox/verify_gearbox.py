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

def verify_function(gearbox_id):
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:

            dbquery=""" 
                        SELECT gearbox FROM powertrains WHERE powertrains.gearbox IN (SELECT id FROM gearboxes WHERE gearbox_id= %s )
                    """
            cur.execute(dbquery,(gearbox_id,))
            gearbox_available=cur.fetchall()
            print(gearbox_available)
            if gearbox_available!=[]:
                return [False,"gearbox is present in another vehicle"]
            
            
            
            dbquery_2="""
                          SELECT gearbox_id FROM gearboxes WHERE gearbox_id=%s
                      """
            cur.execute(dbquery_2,(gearbox_id, ))
            registered_gearbox=cur.fetchall()
            if registered_gearbox==[]:
                return [False,"There is no gearbox with such id"]
            return [True]

