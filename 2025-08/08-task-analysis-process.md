## Process steps
### 1. What do you want to make?
* fill it out during the first iteration. later only read it. unless you need to make an update -> leave information what/when/why you've made the update
* This step is to keep you focused on the task, preventing you from getting off the path, or being sucked into an interesting side issue.
* Read it each time you start work, get distracted, you don't know what to do next etc.
* This step is the outermost border in the solutions space where the solution to your task is.
* This is part of the top-down approach
* In simple words describe here what you want to do.
* Start from the highest perspective/abstraction level.
* What is in the beginning?
* What is in the end?
* What is the input?
* What is the output?
* What is the result?

* this step is part of top-down

* Can you make simple models using plain text files? # this should go to step 4.

### 3. What do you know?
* this step is part of bottom-up
* List what you know as a question-answer style. Use a list.
* Include:
 - simple non-technical description
 - links to documentation or other sources of knowledge, together with content referring to this knowledge (small excerpt)
 - links to files you'll use, modify or create; for source code: with line numbers and part of the code
 - snippets of actual code, functions you'll use, or what you'll write
 - known inputs and outputs
 - emails, chat logs, important dates
 - requirements, constraints, and all other information about your task
* Not every part of knowledge stored here will be used.
### 2. What you don't know?
* If this is your first iteration: jump to step 3., do it, and come back here, then jump to step 4.
* This step is part of bottom-up
* List the things you don't know. Write them as questions.
* Update this list when you notice a gap in what you know.
* Not all questions will need an answer.
* When you will have the answers, prune this list by moving question-answer pairs to section "3. What do you know"

Examples:
 - How do I read a text file in python 3?
 - How do I start a project in Scala?

### 4. How are you going to do it?
* this is the top-down part first, to which you later start combining with the bottom-up
* start from the outermost or highest level of abstraction.
* questions for help:
   - How will it be built?
   - What elements does it have?
   - What are the properties of those elements?
   - What constraints are there?
   - What are the requirements?
* Describe the environment in which you think will exist.
> everything is in some type of environment which has an influence on what is in it

* Define the structure, behaviors, requirements, constraints, elements. Repeat for the elements and behaviors.
* first Write down the inputs/outputs. Create fixtures from them. eg. a webpage has input=text(request) and output=text(html,css,js source code you send to the browser
* Create simple models that will test your assumptions.
* make simple models just returning text and numbers. tip: python is great for this
* Write how you are going to test this thing and its elements.
  - What should they do right?
  - How do you know it is working?
  - Can you break them?
  - Give them bad stuff.
  - Break their limits.
  - Lie to them.
  - Remove their hearts and see what happens.
* Write down the instructions on how to use the things you're going to create or have to happen
* at the bottom Write down the steps required to make it. a detailed list so that anyone can do it from it.