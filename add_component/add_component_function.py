import json
import psycopg2
from psycopg2 import sql


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    table_name = body["table"]
    column_names = []
    column_entries = []
    for key in body:
        if key != "emch" and key != "table":
            column_names.append(key)
            column_entries.append(body[key])
    print(column_names)
    print(column_entries)

    conn = psycopg2.connect(
        user="postgres",
        password="9812376024",
        host="172.19.0.2",
        port=5432,
        dbname="postgres",
    )
    cur = conn.cursor()

    for i in range(len(column_names)):
        dbquery = sql.SQL(
            """UPDATE {choosen_table} 
                       SET {column_name}=(%s)
                       WHERE emch=(%s);
                       """
        ).format(
            choosen_table=sql.Identifier(table_name),
            column_name=sql.Identifier(column_names[i]),
        )
        cur.execute(dbquery, (column_entries[i], emch_number))
        conn.commit()

    '''dbquery=sql.SQL("""
                        UPDATE {choosen_table}
                        SET {entries}
                        WHERE emch=(%s)
                    """).format(choosen_table=sql.Identifier(table_name),entries=sql.SQL(",").join(list(map(lambda x:x[0]+sql.SQL("=")+x[1],list(zip(map(sql.Identifier, column_names),sql.Placeholder() * len(column_entries)))))))
    
    cur.execute(dbquery,(tuple(column_entries+[emch_number])))
    cur.execute(dbquery,(column_entries[i],emch_number,))
    conn.commit()'''

    msg = {
        "message": "%s Component Added Successfully with following EMCH number: %s"
        % (table_name, emch_number)
    }

    return {"statusCode": 200, "body": json.dumps(msg)}
