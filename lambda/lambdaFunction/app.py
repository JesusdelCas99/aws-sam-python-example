from datetime import datetime
import debugpy
import json

print("Waiting for debugger connection...")
debugpy.listen(("0.0.0.0", 5890)) 
debugpy.wait_for_client()  
print("Debugger connected!")

def lambda_handler(event, context):
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": f"Hello, World! The current time is {current_time}."
        })
    }
