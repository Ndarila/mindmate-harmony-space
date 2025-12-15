byLLM generate_advice(mood: str) {
    role: "therapist"
    prompt: """
    User reported mood: {mood}.
    Provide 2 empathetic suggestions or activities for improvement.
    """
}

byLLM classify_mood(text_input: str) {
    role: "analyst"
    prompt: """
    Text input: {text_input}
    Classify mood as: positive / neutral / negative.
    """
}
