# MindMate Harmony Space – Prompt Design

## Overview
MindMate Harmony Space uses **role-based prompt engineering** via byLLM agents to ensure consistent, empathetic, and analytically sound responses.

---

## Mood Classification Prompt

**Agent Role:** Analyst  
**Purpose:** Emotional categorization


### Design Rationale
- Minimal output ensures deterministic graph updates
- Enables downstream agent chaining
- Avoids hallucinations

---

## Feedback Generation Prompt

**Agent Role:** Therapist  
**Purpose:** Supportive guidance


### Design Rationale
- Empathy-focused tone
- Actionable but non-clinical
- Safe for general wellbeing contexts

---

## Prompt Strategy Summary
- Clear role separation
- Low ambiguity outputs
- Designed for agent-to-agent workflows
- Easily extendable for personalization
