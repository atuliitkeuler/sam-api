import json
import psycopg2
from psycopg2 import sql
from TABLES import tables


def lambda_handler(event, context):
    body = json.loads(event.get("body", "{}"))
    emch_number = body["emch"]

    conn = psycopg2.connect(
        user="postgres",
        password="9812376024",
        host="172.19.0.2",
        port=5432,
        dbname="postgres",
    )
    cur = conn.cursor()

    for i in range(len(tables)):
        table_name = tables[i]
        dbquery = sql.SQL(
            """DELETE FROM {choosen_table} 
                       WHERE emch=(%s);
                       """
        ).format(choosen_table=sql.Identifier(table_name))
        cur.execute(dbquery, (emch_number,))
        conn.commit()

    msg = {
        "message": "Vehicle Deleted Successfully with following EMCH number: %s"
        % (emch_number)
    }

    return {"statusCode": 200, "body": json.dumps(msg)}
