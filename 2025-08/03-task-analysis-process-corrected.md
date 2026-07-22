# Task Design & Analysis Process

> This process is the result of years of experience, searching in the past, and the engineering tradition of my family.
> It's an extended method of solving math exercises I was shown in primary school.
> It's a generalized form based in psychology, cognition, art, engineering and other multidisciplinary knowledge I've accumulated.
> This incorporates the ignored by mainstream, literate programming method devised by Donald Knuth who over 40+ years ago explained what is important when making software,
> little known working process of Denis Ritchie and the `acme` editor - the co-maker of the Unix system - a powerful tool, which essentially was made with copy&paste,
> and the greatest tool in the history of software making - the compiled language - being the idea of Grace Brewster Murray Hopper, Rear Admiral of the U.S. Navy, the greatest computer engineer.

> The popular way of making software has nothing to do with engineering, or art (some see it as art). It goes like this: a person gets a task, then starts writing the source code.
> Such a person is required to memorize a programming language (usually one) like a code-making machine. Even when someone remembers a whole programming language,
> it's not possible for this person to create working bug-free code at the first approach. Most of the time having it "work" is a hard thing to do.
> What I have seen and what most people accepted is a cycle of try-run-fail suffering. Even if something finally works it's not correct or not correct at the first, second, third, 100th time it's used. Maintenance of such work is a huge cost.
> This is amplified by so-called "experts" who say what will get rid of this suffering, but not showing how exactly to use them, nor providing a data sheet where they give a guarantee for what they are saying. What I mean: a box of screws you put into a wall to hang stuff, will have information about how much weight you can hang on this screw.
> A screwdriver should have info about the isolation and how high a voltage/current it can withstand.
> If they don't, don't buy them. Even if they have such info, check it yourself. I'm talking about such things.
> Take a book with a title "Programming in XXXX language". This book will show you a programming language, but not how to make software.
> Open your browser and google a type of tool, like an ORM, or a web framework. Do this for multiple programming languages.
> Notice what they say. What they promise you. That's BS. They won't. For trivial things yes, but nothing is trivial. Those tools will at some point in time be the source of the pain, and you end up using the simplest solutions there are. ORMs are the best example.
> Now the funny part.
> What is easier?:
>   a) having to go from point A to point B without knowing where B is, and sometimes even A
>   b) having to go from point A to point B, knowing where A and B are.
> It's b). The way people are making software is a).
> Everything becomes hilarious when you draw on paper how people make software as looking for a path. It's not engineering nor art.
> It's a search algorithm used by ants when they look for food. What people call refactoring, is actually how a group of ants is optimizing the path to food over time.
> In art, this is called improvisation, or freestyle. A fun and creative way of work, but not something you should use when making
> tools and systems with those tools affecting a huge number of people worldwide.
> Except for this form of creating, artists move from A to B. Artists know what they want to have and they have it. They have a process they use to work. They know their tools, and know what to do to achieve a given effect.
> Same is with engineers. Imagine what it would be if engineers would be building bridges, by just getting to a river bank, and just started to make the bridge the freestyle way having no idea what is on the other side. Heck, ignoring this completely.
> We wouldn't have bridges.
> Somehow though such a way of working is considered the right way to make software for medical equipment (dangerous one), cars, planes, air traffic control, government systems, banks, and other things important or dangerous for us.
> This step-by-step process is how I, and now you, can use to make software the engineering way.
> At least I hope. If you'll have suggestions, please make them public and don't forget to give me a link.

## Project Brainstorm
- Brainstorming area where you define the scope of the project.
- Avoid jargon as much as you can. Use simple plain English.
- This process combines top-down & bottom-up approach:
 - these approaches are not contradicting but complementing
 - top-down starts from a point or idea being the topmost abstraction layer, an overview of all you're going to do
 - top-down issue: you don't see(know) the small details which can derail your whole idea
 - bottom-up starts from a high level of detail, the lowest abstraction level. You then build on top of it another level, and so on till you have the whole thing done
 - bottom-up issue: you don't see(know) the whole picture, or you become lost in the detail. you might spend a lot of time on issues which really aren't issues & often easy to overcome when looking from a different perspective

> gemini: make an image of the following:
> imagine that you have a cone in front of you.
> top-down is like starting from the top, from the top, and moving toward the base
> you expand the thought into the big thing. with all the knowledge needed for this task forming the base of the cone. the base is all those small details. the tip is the highest abstraction level. the base is the lowest abstraction level.
> bottom-up is starting from the bottom, at the base. you are forming the base, and then you go up.
> those are not contradicting approaches, they complement each other.
> think of the base as a blackboard with all the knowledge you need.
> now stop and tell me what are you really doing?
> you take an idea, in a human language, and your task is to make it real using a machine, in a form a machine can understand.
> you do translation.
> now see this:
> top-down is expanding the idea, just like a map operation.
> bottom-up is compressing/distilling the human knowledge into what the machine will understand. it's a reduce operation.
> map and reduce operations are only useful together.
> map is one cone and reduce is another cone, both of which share the same base.
> cool right? this is also happening in your brain. this also is how a transformer deep neural network is made. transformers are used in translations.
> the object made of those two cones,
> you can interpret also as a fence surrounding the solution of your task,
> in the infinite multidimensional solution space.
> solution for your task is somewhere inside.
> in case of software the solution space is within the string space.
> source code, all of it is an object somewhere there.
> this helper process is exploiting those facts.
> you will start from fencing the solution far away from it, but trapping it inside.
> then, with each iteration you will be surrounding it with a tighter fence until you'll have it.
> if you tried TDD and didn't get it, well, the idea is ok, but it's telling you to start at the tightest fence around your solution. which is dumb cause you don't know where the solution is in the first place.
> unit testing is testing at the lowest possible level of detail, without having the whole thing.
> TDD works great when you start from the outermost fence around your solution. unit tests are not for this.
> got it? you should.

* this method is using the knowledge from psychology, sociology, and others.
* You are a human, not a computer. You use human language. We all use human language. We are faster using it.
> Thinking in Human Language is easier for you, than thinking in a Programming Language.
> A programming language tells the machine what to do in a way you can more-or-less know what the machine was told.
> source code is an 80+ years old solution, when computers were the size of a warehouse with the power of your calculator.
> source code solved a problem we have already forgotten it existed.

* this method allows one to stop and start work at any time, after being distracted, etc.
* this method avoids using flow state for working in an office environment.
> flow state is an ineffective method of work:
> - takes time to get into the state (around 20-30 minutes)
> - it's a form of meditation which detaches a person from their surrounding
> - uploaded knowledge has a different form and shape each time
> - downloading knowledge (writing code) leads to mistakes
> - details are often lost during those steps
> - a distraction leads to the destruction of the mental image in the brain, irritation, and mistakes
> - a workplace is full of unpredictable distractions
> - lost sense of time leads to long periods of work:
>   - you need breaks (for me works 45 min work -> 15 minutes of walk; 1,5h of work -> 30 minutes of work; it's bad for me if I work 1,5+h)
>   - eyes need a break where they can look far away
>   - you forget about eating, drinking, and toilet visits
>   - body needs to move, it increases oxidation, reduces stress, triggers good things in your body
>     - you will have a creativity boost after walking around the office, trust me
>   - you want to have a stable tempo of work in the span of weeks, not a burst once or twice a week
> - you forget about small details others will need
> - you can fall into a rabbit hole of a useless issue

* this method makes you stay on track, see the end goal
> as a result your solutions will be simpler

* this method allows anyone to take over in case you get sick or can't work
* this method will get you up to speed after months you finished it
* it solves the problem of unknown unknowns
* it is keeping your ego at bay (no guarantee, some have a dysfunction for which nothing helps)
* Don't start writing source code for the solution before you won't have the full description.

> Yeah, I know it looks like a lot of work. Just trust me.
> You don't want to find out that someone you're working with
> has no idea what he is doing, and a week before the deadline you discover that he
> told you something that makes no sense and you finally see that today
> didn't tell you something important what you need and will take 2 weeks to get
> gave you wrong things and you have to rework everything
> etc.

* You want to find issues sooner, not later.

> With a full description, a coding task changes into a translation task
> from English to a Nerd-English dialect. It's a lot easier work.
> Plus, you can send the description for a first review, which will be easier to read for others

> After you have the solutions and plan of work on the paper you can give it to a new & still learning engineer, or an AI tool
> For people who need experience, this is a great way to learn.
> Your estimations will be more accurate. You shouldn't spend more than 3 days on this document, with 3 days being really big stuff. Usually, it means you do too much.
> This will serve also as a documentation with knowledge often lost
> After it is done, this document, along with the source code can be stored in an organized way, so you can reuse it later. Cool thing: Next time you will do the work faster :D

* you will work in iterations:
 - going through steps 1 to 4.
 - only in the first iteration:
  - go through all steps in this order: 1 3 2 4

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
