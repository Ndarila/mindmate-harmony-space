# Main Jac entry point

# Create demo user
user_node = node.new("user", {"id": 1, "name": "Demo User"})

# Map walkers to frontend
walker.map("log_mood", log_mood)
walker.map("analyze_emotion", analyze_emotion)
agent.map("generate_advice", generate_advice)
agent.map("classify_mood", classify_mood)
