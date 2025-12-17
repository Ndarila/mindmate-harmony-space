# MindMate Harmony Space (AI Mental-Wellbeing Companion) 🧠💙

**Project Type:** AI Mental-Wellbeing Companion  
**Backend:** JacLang  
**Frontend:** Jac Client  
**Branch:** jac-client-frontend

---

## Overview

MindMate Harmony Space is a digital companion that tracks moods, identifies emotional patterns, and offers personalized coping strategies. The platform uses an **Object-Spatial Graph (OSP)** to model emotions, triggers, activities, and suggestions. The frontend interacts with the JacLang backend using **Spawn()** to call walkers for various tasks.

---

## Features

- **Mood Logging:** Log user moods and track emotional patterns.  
- **Journaling:** Write and save personal thoughts and reflections.  
- **Emotion Graph Visualization:** View emotion-trigger-habit relationships.  
- **Weekly Tips:** Receive personalized wellness tips.

---

## Technical Details

### Backend (JacLang)
- Nodes: emotions, triggers, activities, suggestions, journal entries  
- Walkers:
  - `log_mood` — Logs user moods in the backend.  
  - `save_journal_entry` — Saves journal entries for the user.  
  - `fetch_emotion_graph` — Retrieves emotion-trigger-habit graph data.  
  - `generate_weekly_tips` — Generates personalized weekly tips.  
- byLLM functions for generating tips and analyzing emotional trends.

### Frontend (Jac Client)
- Components:
  - `mood_logging.jc` — Mood logging interface.  
  - `journaling.jc` — Journaling interface.  
  - `graph_visualization.jc` — Emotion graph visualization.  
  - `weekly_tips.jc` — Weekly tips display.  
- Main entry: `app.jc`  
- Uses `Spawn()` to call backend walkers for dynamic functionality.

---

## Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/Ndarila/mindmate-harmony-space.git
cd mindmate-harmony-space
git checkout jac-client-frontend
