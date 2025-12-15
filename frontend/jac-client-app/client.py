import requests

# Replace with your Jac server URL
JAC_SERVER = "http://localhost:8000"

def log_mood(mood_text):
    payload = {"mood_text": mood_text}
    r = requests.post(f"{JAC_SERVER}/spawn/log_mood", json=payload)
    return r.json()

if __name__ == "__main__":
    print("MindMate Harmony Space Demo")
    mood_input = input("Enter your mood: ")
    result = log_mood(mood_input)
    print("Response from Jac backend:", result)
