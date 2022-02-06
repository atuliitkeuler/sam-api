import json
import psycopg2

def lambda_handler(event, context):
    dbquery="""
                SELECT * FROM vehicles
            """
    conn = psycopg2.connect(user='postgres', password='9812376024', host='172.19.0.2', port=5432, dbname='postgres')
    cur = conn.cursor()
    cur.execute(dbquery)
    vehicle=cur.fetchall()

    vehicle_columns=["id","created_at","updated_at","lot","unit","biw","power_train","semi_sprung_assembly","rear_suspension_assembly","driveshaft_assembly","fork_and_suspension_assembly","disc_brake_assembly","rear_wheel_assembly","front_wheel_assembly","brake_pedal_assembly","vehicle_harness","mark","battery_assembly","cocktail_box_assembly","telematics","load_body"]
    response=[]

    for i in range(len(vehicle)):
        part_res={}
        for j in range(len(vehicle_columns)):
            if j==1 or j==2:
                part_res[vehicle_columns[j]]=vehicle[i][j].isoformat()
            else:
                part_res[vehicle_columns[j]]=vehicle[i][j]
        response.append(part_res)
    
    msg={"message":res}

    return {
        "statusCode": 200,
        "body": json.dumps(msg)
    }
