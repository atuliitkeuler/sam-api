import json
import psycopg2
from psycopg2 import sql
from table_names import component_tables
from column_table_relations import vehicles_column_table_relation as vctr
from column_table_relations import sub_assembly_column_table_relations as subassembly
from column_table_relations import component_tables_and_their_ids as component_ids


database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}


def lambda_handler(event, context):
    # body = json.loads(event.get("body", "{}"))
    print(event)
    
    if event["queryStringParameters"]==None:
        
        with psycopg2.connect(**database_config) as conn: 
                with conn.cursor() as cur:
                    dbquery = """
                                SELECT emch FROM vehicles
                                """
                    cur.execute(dbquery)
                    vehicles_registered = cur.fetchall()
                    #print(vehicles_registered)

                    """response=[]

                    for i in range(len(vehicle)):
                        part_res={}
                        for j in range(len(vehicle_columns)):
                            if j==1 or j==2:
                                part_res[vehicle_columns[j]]=vehicle[i][j].isoformat()
                            else:
                                part_res[vehicle_columns[j]]=vehicle[i][j]
                        response.append(part_res)"""

                    msg = vehicles_registered
    else:
        
        emch_number = event["queryStringParameters"]["emch"]
        #if verify_function(emch_number)==False:
        if False:
            msg={
                "message":"Wrong emch number"
                }
        else:
            with psycopg2.connect(**database_config) as conn: 
                with conn.cursor() as cur:

                    for subassembly_table in subassembly.keys():
                        #print(subassembly[subassembly_table])
                        for subassembly_table_column, component_table in subassembly[subassembly_table]:
                            print(component_table,subassembly_table_column,subassembly_table,vctr[subassembly_table])
                            dbquery=sql.SQL("""
                                                SELECT {component_id},vehicles.emch FROM {component_table}
                                                 {component_table} INNER JOIN {subassembly_table} ON
                                                    {subassembly_table}.{subassembly_table_column} = {component_table}.id
                                                       INNER JOIN vehicles ON vehicles.{subassembly_column_in_vehicles}={subassembly_table}.id;
                                            """).format(component_id=sql.Identifier(component_ids[component_table]),component_table=sql.Identifier(component_table),subassembly_table_column=sql.Identifier(subassembly_table_column),subassembly_table=sql.Identifier(subassembly_table),subassembly_column_in_vehicles=sql.Identifier(vctr[subassembly_table]))
                            '''dbquery="""
                                        SELECT gearbox_id FROM %s
                                                WHERE %s.id IN(
                                                    SELECT %s FROM 
                                                    %s WforHERE %s.id IN (
                                                        SELECT %s FROM vehicles
                                                        WHERE emch= %%s
                                                    )
                                                );

                                        """'''
                            #print(dbquery)
                            #print(emch_number)
                            #print(dbquery.as_string(conn))
                            #cur.execute(dbquery %ext.quote_indent(component_table,component_table,subassembly_table_column,subassembly_table,subassembly_table,vctr[subassembly_table]),[emch_number])
                            cur.execute(dbquery)
                            vehicle_details=cur.fetchall()
                            
                            #cur.execute("SELECT * FROM gearboxes WHERE gearboxes.id IN ('724a802f-cc17-4775-8f68-62e989f491a9');")
                            #print(cur.fetchall())
                            msg={
                                "message":"Done"
                            }
                            print(vehicle_details)

                            


    return {"statusCode": 200, "body": json.dumps(msg)}
