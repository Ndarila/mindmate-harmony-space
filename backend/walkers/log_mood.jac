walker log_mood(mood_text: str) {
    # Create user mood node
    mood_node = node.new("mood", {
        "text": mood_text,
        "timestamp": now()
    })
    
    # Connect to user (assuming single-user demo)
    user_node = node.get("user", {"id": 1})
    if not user_node {
        user_node = node.new("user", {"id": 1})
    }
    edge.new("has_mood", user_node, mood_node)

    # Spawn analyze_emotion walker
    spawn analyze_emotion(mood_node)
}
