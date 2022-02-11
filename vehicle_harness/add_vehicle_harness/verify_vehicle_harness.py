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

def verify_function(vehicle_harness_id):
    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:
            #Checking whether that vehicle harness is already present in anotther vehicle or not
            dbquery=""" 
                        SELECT id FROM vehicles WHERE vehicle_harness IN
                        (SELECT id FROM vehicle_harnesses WHERE vehicle_harness_id = %s )
                    """
            cur.execute(dbquery,(vehicle_harness_id,))
            vehicle_harness_available=cur.fetchall()
            print(vehicle_harness_available)
            if vehicle_harness_available!=[]:
                return [False,"vehicle_harness is present in another vehicle"]
            
            #check whether that vehicle harness was a part of inventory or not
            
            dbquery_2="""
                          SELECT id FROM vehicle_harnesses WHERE vehicle_harness_id=%s
                      """
            cur.execute(dbquery_2,(vehicle_harness_id, ))
            registered_vehicle_harness=cur.fetchall()
            if registered_vehicle_harness==[]:
                return [False,"There is no vehicle_harness with such id"]
            return [True]

