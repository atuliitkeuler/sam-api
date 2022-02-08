import json
import psycopg2


def lambda_handler(event, context):

    """Sample pure Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """

    """conn = psycopg2.connect(user='postgres', password='9812376024', host='172.19.0.2', port=5432, dbname='postgres')
    cur = conn.cursor()
    cur.execute(dbquery2)
    conn.commit()"""
    # cur.execute("INSERT INTO hello_atul_new (hello_source, hello_target) VALUES ('w', 'sdf');")
    # new_message=cur.fetchall()

    # msg={"message":new_message[0]}
    msg = {"message": "bye bye"}

    return {"statusCode": 200, "body": json.dumps(msg)}
