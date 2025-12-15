# MindMate Harmony Space - Python Client
from jac_client import Jac

jac = Jac("http://localhost:8000")

print(jac.spawn("init_app"))

print(jac.spawn("create_user", {
    "user_id": "u1",
    "name": "Test User"
}))

print(jac.spawn("log_mood", {
    "emotion": "calm",
    "intensity": 3,
    "timestamp": "2025-12-15"
}))

print(jac.spawn("generate_feedback"))
