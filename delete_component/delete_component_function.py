import json
import psycopg2
from psycopg2 import sql


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]
    table_name = body["table"]

    conn = psycopg2.connect(
        user="postgres",
        password="9812376024",
        host="172.19.0.2",
        port=5432,
        dbname="postgres",
    )
    cur = conn.cursor()

    dbquery_1 = "SELECT column_name FROM information_schema.columns WHERE table_schema='public' and table_name = (%s)"
    cur.execute(dbquery_1, (table_name,))
    column_names = cur.fetchall()
    print(column_names)
    for i in range(len(column_names)):
        column_name = column_names[i][0]
        if column_name != "emch" and column_name != "id":
            dbquery_2 = sql.SQL(
                "UPDATE {table} SET  {column}=NULL WHERE emch=(%s)"
            ).format(
                table=sql.Identifier(table_name), column=sql.Identifier(column_name)
            )
            cur.execute(dbquery_2, (emch_number,))
            conn.commit()

    '''conn.commit()
    dbquery=sql.SQL("""DELETE FROM {choosen_table} 
                    WHERE emch=(%s);
                    """).format(choosen_table=sql.Identifier(table_name))'''

    msg = {
        "message": "%s Component Deleted Successfully with following EMCH number: %s"
        % (table_name, emch_number)
    }

    return {"statusCode": 200, "body": json.dumps(msg)}
