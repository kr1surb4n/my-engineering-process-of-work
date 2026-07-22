# The Task Analysis Process

This document outlines a four-step process for analyzing and planning a task before implementation.

*   **Iteration:** For a new task, first follow the steps in order 1, 3, 2, and 4. In next iterations follow the steps in order from 1 to 4. These steps are designed to be iterative. Revisit them as you gain more understanding.

---

### 1. What is the goal?

*This step is about defining the scope and purpose of your task. It keeps you focused and prevents scope creep. Read this section each time you start work on the task.*

*   **What is the primary objective?**
*   **What is the starting point?**
*   **What is the desired end result?**
*   **What are the inputs?**
*   **What are the outputs?**

---

### 2. What do you not know?

*This step is about identifying gaps in your knowledge. It's crucial for avoiding surprises and roadblocks later.*
*In first iteration first do  "What do you already know?", then come back to this step, then to "How will you do it?"*

*   List everything you don't know as a question.
*   Update this list whenever you discover a new unknown.
*   As you find answers, move the question-answer pair to the "What do you already know?" section.

*   **Examples:**
    *   *How do I read a text file in Python 3?*
    *   *What is the correct API endpoint for fetching user data?*

---

### 3. What do you already know?

*This step is about gathering all existing information relevant to the task. It's a bottom-up approach to building a foundation of knowledge.*

*   List what you know in a question-and-answer format.
*   **Include:**
    *   Simple, non-technical descriptions of concepts.
    *   Links to documentation, with relevant excerpts.
    *   Links to files you will use, modify, or create (include line numbers and code snippets if applicable).
    *   Code snippets and function definitions you plan to use or write.
    *   Known inputs and outputs.
    *   Relevant emails, chat logs, and dates.
    *   Requirements, constraints, and any other specifications.

---

### 4. How will you do it?

*This is where you create a detailed plan for implementation. You will combine the high-level understanding from step 1 with the detailed knowledge from steps 2 and 3.*

*   **How will the solution be built?**
    *   What are the components?
    *   What are the properties of those components?
    *   What are the constraints and requirements?
    *   Describe the environment where the solution will exist.

*   **Define the structure and behavior:**
    *   Define the structure, behaviors, requirements, and constraints for each component.
    *   Define the inputs and outputs for each component. Create fixtures and examples.
    *   Create simple models or prototypes to test your assumptions.

*   **How will you test it?**
    *   How do you know it's working correctly?
    *   What are the edge cases?
    *   How can you break it? (e.g., invalid inputs, unexpected order of operations)
    *   What happens if you remove a dependency?

*   **Write the implementation steps:**
    *   Create a detailed, step-by-step list of tasks required to complete the implementation. This list should be clear enough for another person to follow.
