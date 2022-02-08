import json
import psycopg2


def lambda_handler(event, context):
    # body = json.loads(event.get("body", "{}"))
    print(event)
    emch_number = event["queryStringParameters"]["emch"]
    dbquery = """
                SELECT emch FROM vehicles
            """
    conn = psycopg2.connect(
        user="postgres",
        password="9812376024",
        host="172.19.0.2",
        port=5432,
        dbname="postgres",
    )
    cur = conn.cursor()
    cur.execute(dbquery)
    vehicles_registered = cur.fetchall()
    print(vehicles_registered)

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

    return {"statusCode": 200, "body": json.dumps(msg)}
