import warnings
warnings.filterwarnings('ignore')
import time, traceback, json
from pydantic import BaseModel
from fastapi import FastAPI, Response
app = FastAPI()

@app.get("/demo")
def test():
    try:
        result = {'result' : 'GOOD'}
        return Response(content=json.dumps(result, default=str), headers={"Content-Type": "application/json"}, status_code=200)
    except:
        response_ = f'Internal Server Error: \n {traceback.format_exc()}'
        print(response_)
        response_ = {'message' : response_}
        return Response(content=json.dumps(response_, default=str), headers={"Content-Type": "application/json"}, status_code=500)