import json
import psycopg2
from psycopg2 import sql
from verify_gearbox import verify_function

database_config = {
    "user": 'postgres',
    "password": '9812376024',
    "host": '172.19.0.2',
    "port": 5432,
    "dbname": 'postgres'
}
# will take emch and gearbox_id as input
# issue i am facing is ki jaisi hi request dobara bhejta hu ik or row create ho jati h with sam e values
#the solution is ki m jo subassembly me pehle components aaenge unko m unique kr du 


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    {component_name}_id = body["{component_name}_id"]
    print(emch_number, {component_name}_id)

    with psycopg2.connect(**database_config) as conn: 
        with conn.cursor() as cur:
            verification=verify_function({component_name}_id)
            if verification[0]:

                dbquery="""
                            UPDATE {subassembly_table_name} 
                            SET {component_column_name_in_subassembly_table}=sub_query_1.id FROM
                            (SELECT id FROM {component_table_name} WHERE {component_name}_id=%s) AS sub_query_1,
                            (SELECT {subassembly_column_name_in_vehicles_table} FROM vehicles WHERE emch=%s) AS sub_query_2
                            WHERE {subassembly_table_name}.id=sub_query_2.{subassembly_column_name_in_vehicles_table}
                        """

                cur.execute(dbquery,({component_name}_id,emch_number,))
                conn.commit()

                msg = {
                    "message": "{component_name} with {component_name} id: %s updated successfully in vehicle with following EMCH number: %s"
                    % ({component_name}_id, emch_number)
                }
            else:
                msg={"message":verification[1]}

    return {"statusCode": 200, "body": json.dumps(msg)}
