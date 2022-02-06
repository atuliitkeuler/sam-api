import json
import psycopg2

def lambda_handler(event, context):
    id_=body['id']
    lot=body['lot']
    unit=body['unit']
    dbquery="""
                INSERT INTO vehicles(id,lot,unit)
                VALUES (%s,%s,%s)
            """
    conn = psycopg2.connect(user='postgres', password='9812376024', host='172.19.0.2', port=5432, dbname='postgres')
    cur = conn.cursor()
    cur.execute(dbquery,(id_,lot,unit))
    conn.commit()
    
    msg={"message":"Vehicle Added Successfully"}

    return {
        "statusCode": 200,
        "body": json.dumps(msg)
    }
