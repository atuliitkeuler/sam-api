import json
import psycopg2
from psycopg2 import sql
from table_names import component_tables
from column_table_relations import vehicles_column_table_relation as vctr
#from column_table_relations import sub_assembly_column_table_relations as subassembly
from column_table_relations import component_tables_and_their_ids as component_ids
from column_table_relations import frontend_backend_component_table as fbcomp_table
from column_table_relations import frontend_backend_subassembly_table as fbsub_table
from column_table_relations import frontend_backend_subassembly_table_columns as fbsub_table_column


database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}


def lambda_handler(event, context):
    print(event)
    emch_number = event["queryStringParameters"]["emch"]
    component_name= event["queryStringParameters"]["component_name"]
    no_component_subassemblies=["vehicle_harness","biw" , "mark", "telematics", "load_body"]

    if component_name in no_component_subassemblies:
        with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:
                dbquery=sql.SQL("""
                            SELECT {component_table}.{component_id}, vehicles.emch
                            FROM {component_table} INNER JOIN vehicles ON 
                            vehicles.{subassembly_column_in_vehicles}={component_table}.id
                        """).format(component_id=sql.Identifier(component_ids[fbcomp_table[component_name]]),component_table=sql.Identifier(fbcomp_table[component_name]),subassembly_column_in_vehicles=sql.Identifier(vctr[fbcomp_table[component_name]]))
                cur.execute(dbquery)
                vehicle_details=cur.fetchall()
    else:
        with psycopg2.connect(**database_config) as conn: 
            with conn.cursor() as cur:
                dbquery=sql.SQL("""
                                    SELECT {component_id},vehicles.emch FROM {component_table}
                                        {component_table} INNER JOIN {subassembly_table} ON
                                        {subassembly_table}.{subassembly_table_column} = {component_table}.id
                                            INNER JOIN vehicles ON vehicles.{subassembly_column_in_vehicles}={subassembly_table}.id;
                                """).format(component_id=sql.Identifier(component_ids[fbcomp_table[component_name]]),component_table=sql.Identifier(fbcomp_table[component_name]),subassembly_table_column=sql.Identifier(fbsub_table_column[component_name]),subassembly_table=sql.Identifier(fbsub_table[component_name]),subassembly_column_in_vehicles=sql.Identifier(vctr[fbsub_table[component_name]]))
                
                cur.execute(dbquery)
                vehicle_details=cur.fetchall()
            
    flag=0
    for component_id, emch in vehicle_details:
        if emch==emch_number:
            flag=1
            msg={
                    "message":component_id
                }
    if flag==0:
        msg={
            "message":"None"
        }
                                            
    print(vehicle_details)

                            


    return {"statusCode": 200, "body": json.dumps(msg)}
