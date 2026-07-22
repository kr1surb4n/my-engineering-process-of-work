# The Task Analysis Process: Step-by-Step

## How to use this process
This is an iterative cycle. You don't just do it once; you refine it as you learn.

**The First Run:** Follow the order **1 $\rightarrow$ 3 $\rightarrow$ 2 $\rightarrow$ 4**.
**Every Run After:** Follow the order **1 $\rightarrow$ 2 $\rightarrow$ 3 $\rightarrow$ 4**.

---

## 1. What is the goal? (The Outer Fence)
*Define the scope to prevent "scope creep" and stay on track. Read this every time you restart your work session.*

*   **The Big Picture:** In simple words, what do you want to make?
*   **The Journey:** 
    *   What is the starting point?
    *   What is the desired end result?
*   **The Data:** 
    *   What are the inputs?
    *   What are the outputs?
*   **The Deliverable:** What is the actual result?
*   **Visualizing:** Can you make a simple model using plain text files?

---

## 2. What do you NOT know? (The Gaps)
*Identify the roadblocks before you hit them. If it's the first iteration, do Step 3 first.*

*   **The Question List:** List every uncertainty as a question (e.g., *"How do I read a text file in Python 3?"*).
*   **The Rule:** When you find an answer, move the question and the answer to the "What I Know" section.
*   **Maintenance:** Update this list the moment you notice a gap in your knowledge.

---

## 3. What do you already know? (The Foundation)
*Gather your raw materials. This is the bottom-up approach.*

*   **The Knowledge Base:** List facts in a Q&A style.
*   **Include:**
    *   Simple, non-technical descriptions.
    *   Links to documentation (with a small excerpt of why it matters).
    *   Links to files you'll use, modify, or create (including line numbers).
    *   Code snippets or functions you plan to use.
    *   Known inputs/outputs, emails, chat logs, and important dates.
    *   Hard requirements and constraints.

---

## 4. How will you do it? (The Implementation)
*Combine your goal (Step 1) with your knowledge (Steps 2 & 3) to build the plan.*

### The Blueprint
*   **The Setup:** What is the tech stack? What is the environment (OS, hardware, etc.)?
*   **The Architecture:** 
    *   What are the core components?
    *   What are the properties and behaviors of these components?
    *   What are the strict requirements and constraints?
*   **The Logic:** 
    *   Define the structure and behavior for every element.
    *   Map the inputs and outputs. Create "fixtures" (sample data) to test your assumptions.
    *   Build tiny prototypes (e.g., in Python) that just return text/numbers to verify the logic.

### The Stress Test
*Don't just test if it works—test how it breaks.*
*   **The Happy Path:** What should it do correctly?
*   **The "Lies":** What happens if you give it bad data?
*   **The Limits:** What happens at the absolute edge of its capacity?
*   **The Heart:** If you remove a core dependency, what happens?

### The Final Step: The Roadmap
*   **Implementation Steps:** Write a detailed, numbered list of steps. It should be so clear that anyone else could follow it to build the project.
*   **Definition of Done:** What is the final checklist that proves the task is complete?
