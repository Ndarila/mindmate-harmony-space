# MindMate Harmony Space – AI Mental-Wellbeing Companion

![MindMate Logo](docs/mindmate_logo.png)  

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Python Version](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)

**MindMate Harmony Space** is an intelligent, compassionate digital companion designed to support mental wellbeing. Using a multi-agent, graph-based architecture in **JacLang**, it tracks moods, detects patterns, and generates personalized coping strategies with **LLM-assisted emotional intelligence**.

---

## ?? Project Overview

MindMate Harmony Space empowers users to:

- **Log moods** with intensity, triggers, and activities  
- **Analyze emotional patterns** to detect trends and correlations  
- **Receive personalized support**: coping strategies, affirmations, and activity recommendations  
- **Benefit from AI insights**: LLM interprets emotions and generates empathetic responses  
- **Leverage a graph-based structure**: OSP (Object-Spatial Programming) graph models rich emotional relationships  

The system blends multi-agent architecture with LLM integration to create a truly interactive, intelligent, and empathetic companion.

---

## ?? Key Features

| Feature | Description |
|---------|-------------|
| **Mood Tracking** | Log emotional states with intensity, triggers, and activities |
| **Pattern Analysis** | Identify trends, recurring triggers, and effective coping activities |
| **Personalized Support** | Generate targeted coping strategies, affirmations, and activity suggestions |
| **LLM Integration** | Analyze emotional text and generate empathetic responses |
| **Graph-Based Architecture** | OSP graph models complex relationships between emotions, triggers, and activities |
| **Multi-Agent System** | Each agent handles distinct responsibilities for modular, scalable design |

---

## ?? Multi-Agent System Architecture

### Agent Interaction Diagram

\\\
+-------------+
¦    User     ¦
+-------------+
       ¦
       +--? MoodLogger --? Creates: Emotion, Trigger, Activity nodes
       ¦         ¦          Builds OSP graph connections
       ¦         +--? Stores emotional state & context
       ¦
       +--? TrendAnalyzer -? Analyzes mood patterns, identifies top triggers & activities
       ¦         +--? Generates insights & recommendations
       ¦
       +--? SupportiveAdvisor -? Suggests exercises, journaling prompts, affirmations
       ¦         +--? Creates personalized Suggestion nodes
       ¦
       +--? LLM Agents --? LLMAnalyzer: interprets emotional text
                        EmpatheticResponder: generates warm responses
                        PatternClassifier: classifies trends
\\\

---

### Agent Responsibilities

| Agent | Role | Inputs | Outputs |
|-------|------|--------|---------|
| **MoodLogger** | Data Collection | emotion_name, intensity, user_input, trigger_names, activity_names | Logged emotion details, graph updates |
| **TrendAnalyzer** | Pattern Detection | time_window_days | Insights, trends, statistics |
| **SupportiveAdvisor** | Recommendation | current_emotion, current_intensity | Personalized coping suggestions |
| **LLMAnalyzer** | Text Interpretation | user_text | Emotion, intensity, triggers, interpretation |
| **EmpatheticResponder** | Response Generation | emotion, intensity, context | Empathetic, validating response text |
| **PatternClassifier** | Pattern Analysis | emotion_history | Pattern type, confidence, explanation |

---

## ?? OSP Graph Architecture

### Node Types

| Node | Properties | Purpose |
|------|-----------|---------|
| **User** | user_id, name, mood_count | Root node representing the user |
| **Emotion** | emotion_id, name, intensity, timestamp, user_input, llm_interpretation | Emotional snapshot |
| **Trigger** | trigger_id, name, count | Event affecting mood |
| **Activity** | activity_id, name, times_done | Action taken to manage emotions |
| **Suggestion** | suggestion_id, title, content, sug_type, llm_generated | Coping strategy recommendation |

### Edge Types

| Edge | Properties | Relationship |
|------|-----------|-------------|
| **experiences** | timestamp | User ? Emotion |
| **triggers_emotion** | intensity | Trigger ? Emotion |
| **helps_with** | effectiveness | Activity ? Emotion |
| **performs** | timestamp, duration | User ? Activity |

**Graph Advantages over REST APIs**:

- Natural modeling of emotion-trigger-activity relationships  
- Efficient pattern discovery via graph traversal  
- Contextual insights from connected nodes  
- Temporal trend analysis using timestamps  
- Easily extendable with new node/edge types  

---

## ?? byLLM Integration

### Generative Use Cases

- **Emotional Text Interpretation**  
- **Empathetic Response Generation**

### Analytical Use Cases

- **Emotional Pattern Classification**  
- **Trigger-Emotion Correlation Scoring**

**Example: Generative Prompt**
\\\python
response = byLLM(f"""
Generate an empathetic, supportive response for someone experiencing:
Emotion: {emotion}
Intensity: {intensity}
""")
\\\

---

## ?? Client Interface Examples

### Using \spawn()\ to Call Walkers

\\\python
# Log a mood entry
mood_logger = MoodLogger(
    emotion_name="anxious",
    intensity=0.8,
    user_input="Worried about presentation",
    trigger_names=["work deadline"],
    activity_names=["meditation"]
)
user_node spawn mood_logger
print(mood_logger.result)

# Trend analysis
analyzer = TrendAnalyzer(time_window_days=7)
user_node spawn analyzer
insights = analyzer.analysis_result['insights']

# Personalized support
advisor = SupportiveAdvisor(current_emotion="sad", current_intensity=0.6)
user_node spawn advisor
suggestions = advisor.suggestions
\\\

---

## ?? Data & Evaluation

### Sample Scenarios

- Morning anxiety (work stress, intensity: 0.8)  
- Post-exercise happiness (intensity: 0.9)  
- Evening sadness (intensity: 0.6)  
- Overwhelm/stress (intensity: 0.7)  
- Calm/peaceful (intensity: 0.8)  

---

## ?? Setup & Installation

### Running the Application

\\\powershell
# Run main multi-agent demo
jac run backend_jaclang/main.jac

# Run byLLM demo
jac run backend_jaclang/mindmate_bylm.jac

# Run with server mode (future)
jac serve api_bridge/server.py
\\\

---

### Project Structure

\\\
frontend_jac_client content loaded
api_bridge
  server.py
backend_jaclang
  main.jac
  mindmate_bylm.jac
  mindmate_multiagent.jac
  mindmate_osp.jac
  mindmate_web.jac
docs
  analytics_dashboard.md
  collaboration.md
  discovery_panels.md
  examples.md
  writing_assistant.md
.gitignore
LICENSE
README.md
TECHNICAL_DOCUMENTATION.md
jac-client-bundle.js
jac_client_demo.py
\\\

---

## ?? License

MIT License – Open source mental wellbeing support
