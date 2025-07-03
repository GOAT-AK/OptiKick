import pickle  # For saving and loading the trained model
import uvicorn  # To run the FastAPI server
from fastapi import FastAPI
from pydantic import BaseModel  # For request validation
import numpy as np

# Initialize FastAPI app
app = FastAPI()

# Load the trained KNN model
with open("ML_API/ran_model.pkl", "rb") as model_file:
    knn_model = pickle.load(model_file)

# Load the scaler for standardization
with open("ML_API/scaler.pkl", "rb") as scaler_file:
    scaler = pickle.load(scaler_file)

# Define the label mapping (Cluster Number → Readable Status)
status_labels = {0: "At Risk", 1: "Optimal", 2: "Recovering", 3: "Underperforming"}

# Define the training programs for each player status
training_programs = {
    0: {
        "Focus": "Strength and injury recovery",
        "Program": [
            "Strength training: 3 sessions/week",
            "Physical therapy for injury-prone areas",
            "Low-impact exercises: Swimming or Pilates",
            "Nutritional plan for recovery"
        ]
    },
    1: {
        "Focus": "Stamina and endurance",
        "Program": [
            "Cardio exercises: 30 mins/day",
            "Interval running drills",
            "Cycling: 45 mins twice a week",
            "Proper hydration and recovery techniques"
        ]
    },
    2: {
        "Focus": "Skill enhancement and agility",
        "Program": [
            "Agility ladder drills: Daily for 15 mins",
            "Plyometric training: Twice a week",
            "Skill-based drills specific to position",
            "Mental visualization techniques"
        ]
    },
    3: {
        "Focus": "Performance optimization",
        "Program": [
            "High-intensity interval training (HIIT): 4 sessions/week",
            "Match simulation drills",
            "Strength training: Core and lower body focus",
            "Personalized nutrition for peak performance"
        ]
    }
}

# Define request model for input validation
class PlayerData(BaseModel):
    fatigue_score: float
    injury_risk: float
    readiness_score: float

# Define the prediction endpoint
@app.get("/")
def read_root():
    return {'message': 'RAN Player Status Prediction API'}

@app.post("/predict")
def predict_status(data: PlayerData):
    """
    Receives biometric data, predicts player's status, and returns the corresponding training program.
    
    Request Body:
    {
        "fatigue_score": float,
        "injury_risk": float,
        "readiness_score": float
    }
    
    Response:
    {
        "Predicted Status": "Optimal",
        "Focus Area": "Stamina and endurance",
        "Training Program": [
            "Cardio exercises: 30 mins/day",
            "Interval running drills",
            "Cycling: 45 mins twice a week",
            "Proper hydration and recovery techniques"
        ]
    }
    """
    # Convert input to NumPy array for prediction
    input_data = np.array([[data.fatigue_score, data.injury_risk, data.readiness_score]])

    # Standardize input using the loaded scaler
    input_scaled = scaler.transform(input_data)

    # Make prediction
    predicted_status = knn_model.predict(input_scaled)[0]

    # Get the corresponding training program
    training_plan = training_programs.get(predicted_status, {"Focus": "Unknown", "Program": ["No training plan available"]})

    return {
        "Predicted Status": status_labels[predicted_status],
        "Focus Area": training_plan["Focus"],
        "Training Program": training_plan["Program"]
    }

# Run the API (for local testing)
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)


