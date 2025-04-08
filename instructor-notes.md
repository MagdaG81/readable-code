---
title: Instructor Notes
---

## Course Design

This course aims to provide "food for thought" about writing good code without getting lost in software development best practices. 
The idea is that when writing code, novice developers don't focus on code structure or readability and, therefore, write code that is difficult to maintain and use. 
The risk is to write code that is only used once. By providing some guidance and simple consideration, code can improve substantially in terms of readability, making it more sustainable. 

There are a few misconceptions that this course aims to correct:

- "I will always remember my code": The idea is that since I wrote the code, I will always be able to explain it to others. The reality is different. When a code is completed, used once or for a limited time, even the author will forget how it works or what it does. Therefore, when it is needed to reuse it in the future, a lot of time is wasted trying to understand it. If the code is written, keeping in mind that we need to reuse it, we can write better code that requires less time to read. 

- "Code is for the computer to run". True, but also for people to read. Code is often more read than written. We read code when trying to modify it or add new features. If someone else wrote the codebase, we spent more time reading it and trying to understand how it works than actually writing new code to extend it. Creating a code for people will make it easy to read and maintain. This results in spending less time trying to understand the code.

- "Software engineers write good code. I am a scientist, I don't need to". Scientists use code for their research, and even if it is not their main outcome, code is sometimes the main tool to reproduce the results. Often, they share their code with a large community so that other people can use it. If the code is not clear, not tested and not easy to extend, it cannot be easily used. Therefore, scientists must invest time in writing good-quality code. 

- "I don't have time for testing". Testing is the most underrated task in any coding activity. Design and writing tests require time, and although some testing is added to evaluate the code, coding projects often lack a reliable testing framework. The truth is testing can actually save time in the long run. Every time a code needs to be improved or extended, a test will be required to ensure that any change did not affect previous functionality. Testing also provides trust in the code and, therefore, in the results it produces. 

## Course structure
The course is divided in four episodes:

- Episode 1: Write Readable Code
- Episode 2: Write Elegant Code
- Episode 3: Write Graceful Code
- Episode 4: Write Reliable Code

The first two episodes are designed to be short and don't requires a lot of live coding. They are more for discussion, to let the students think about what can be changes to improve readability of the code. Episode 3 explains how the handle errors in the code and why it is important to add docstrings in the code. Episode 4 requires more time, as it introduce Pytest functionality. The idea of this last episode is to introduce unit tests in the development pipeline. This last episode builds on the previous ones. It incorporates concept like input validation, docstring naming conventions, and it can run as stand alone lesson.

## Course delivery

Although not particularly endorsed, this code works better in VSCode. This is because some of the Vscode extensions can be introduced to facilitate the creation of the docstrings or introduce pylint (extra components that can be added to the course). 

The ideal cohort is 5 students. This is because part of the course is based on discussion about the code, and students in smaller classes might find it easier to participate in the discussion. For a larger cohort, it is advisable to have at least 1 helper for four students and break the class into rooms to facilitate discussion.

