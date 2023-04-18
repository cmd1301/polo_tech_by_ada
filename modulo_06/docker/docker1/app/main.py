from fastapi import FastAPI
from _______ import MLmodel

app = FastAPI()

# Load machine learning model
model = MLmodel()

# Define the prediction endpoint
@app.post("/predict")
def predict(data):
    # Input data
    input_data = list(data.values())
    # Make prediction
    pred = model.predict([input_data])
    # Return predicted output as a JSON
    return {"prediction": pred[0]}