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
    conn_string=dict(
            user='postgres',
            password='9812376024',
            host='sam-postgres-db',
            port=5432,
            database='postgres'
        )
    #conn_string = "dbname='postgres' port='5432' user='postgres' password='9812376024' host='sam-postgres-db'"
    conn = psycopg2.connect(user='postgres', password='9812376024', host='172.19.0.2', port=5432, dbname='postgres')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM hello_atul_new;")
    new_message=cursor.fetchone()
    msg={"message":"bye bye"}

    return {
        "statusCode": 200,
        "body": json.dumps(msg)
    }
