import json
import psycopg2
from psycopg2 import sql
from TABLES import tables
from CHILD_PARENT import level1
from CHILD_PARENT import level2

def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number=body['emch']
    conn = psycopg2.connect(user='postgres', password='9812376024', host='172.19.0.2', port=5432, dbname='postgres')
    cur = conn.cursor()

    for i in range(len(tables)):
        table_name=tables[i]
        dbquery=sql.SQL("INSERT INTO {choosen_table}(emch) VALUES (%s)").format(choosen_table=sql.Identifier(table_name))
        cur.execute(dbquery,(emch_number,))
        conn.commit()
    
    
    for level in [level1,level2]:
        print(level)
        for key in level:
            values=level[key]
            print(values)
            for value in values:
                dbquery2=sql.SQL("""
                    UPDATE {key}
                    SET {value_0} =(SELECT id FROM {value_1} WHERE {value_1}.emch=(%s))
                    WHERE emch=(%s);
                """).format(value_0=sql.Identifier(value[0]),value_1=sql.Identifier(value[1]),key=sql.Identifier(key))
                cur.execute(dbquery2,(emch_number,emch_number))
                conn.commit()


    msg={"message":"Vehicle Added Successfully with following EMCH number: %s"%(emch_number)}

    return {
        "statusCode": 200,
        "body": json.dumps(msg)
    }
