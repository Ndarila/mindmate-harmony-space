# MindMate Harmony Space – System Architecture

## Overview
MindMate Harmony Space is an AI-powered mental wellbeing companion built using the **Jac programming language** and **Jaseci-style multi-agent architecture**.  
The system models user emotional states as nodes in an **OSP (Object–State–Process) graph** and uses autonomous agents to analyze mood and provide empathetic feedback.

---

## Core Components

### 1. OSP Graph Model
The system uses a graph-based representation:

- **Node: user**
  - Represents the system user
  - Attributes: id, name

- **Node: mood**
  - Represents a logged emotional state
  - Attributes: text, timestamp, mood_class

- **Edge: has_mood**
  - Connects a user to their mood entries

---

## Agent & Walker Architecture

### Walkers
- **log_mood**
  - Accepts raw mood text
  - Creates a mood node
  - Connects it to the user
  - Triggers emotion analysis

- **analyze_emotion**
  - Reads mood text
  - Classifies emotion using an analytical LLM agent
  - Triggers feedback generation

### Agents (byLLM)
- **classify_mood**
  - Classifies mood as positive, neutral, or negative

- **generate_advice**
  - Produces empathetic, supportive suggestions

---

## Execution Flow
1. User submits mood
2. Mood stored as graph node
3. Emotion classified
4. Feedback generated
5. System responds with insights

---

## Why Jac?
Jac enables:
- Native graph thinking
- Agent-oriented workflows
- Clean separation of logic and data
- Scalable AI system design

This architecture allows MindMate to evolve into a full mental wellbeing assistant with memory, trends, and personalization.
