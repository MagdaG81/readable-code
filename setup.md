---
title: Setup
---

This course focuses on enhancing the quality of code by emphasising readability, maintainability, and clarity. It aims to provide practical and simple guidance on writing code that is not only functional but also easier to understand, read and maintain. 

By the end of this course, you will have the skills to transform basic code into well-structured, maintainable software with a few simple yet effective steps.

## Motivation 

For a scientist or someone with no computer science background, the journey of coding starts with learning syntax and basic programming constructs. 
The goal is to write scripts that achieve a specific task, such as analysing some data or testing hypotheses and methods. As projects evolve, so does the code, and soon, what started as simple code grows in complexity. Without a proper structure, complex code can quickly turn into a tangled mess that is difficult to understand, maintain, and extend.

Even when the code is not meant to be for a large audience, readability and maintainability are essential. The truth is that writing clear and good quality code does not require extensive expertise in software development, but following simple steps can improve the code's quality.

Good code is not written in one go; it requires iterative refinement and attention to detail. This course aims to bridge the gap between basic coding skills and intermediate software engineering practices, ensuring that the codebase is robust, comprehensible, and sustainable.

## Target Audience

This course is designed for individuals who have a basic to intermediate understanding of Python programming but lack knowledge in best practices for writing clear and maintainable code. You don't need to be a software developer to write good code; these principles can be easily adopted by anyone who writes code regularly, such as scientists, researchers, and developers.

This course is for you if:

- You want to learn how to write code that is easy to be shared with others
- Your are comfortable with Python coding

::::::::::::::::::::callout
## Prerequisite Knowledge

This course requires some understanding of basic Python syntax. 
**What you should be familiar with**

- [Type of variables in Python ](https://swcarpentry.github.io/python-novice-inflammation/01-intro.html)
- [Function in Python](https://swcarpentry.github.io/python-novice-inflammation/08-func.html)
- [Import packages](https://swcarpentry.github.io/python-novice-gapminder/06-libraries.html)
- [If statement](https://swcarpentry.github.io/python-novice-inflammation/07-cond.html)
- [Loop in Python](https://swcarpentry.github.io/python-novice-inflammation/05-loop.html)
- [Error and exception](https://swcarpentry.github.io/python-novice-inflammation/09-errors.html)
- [Assertion](https://swcarpentry.github.io/python-novice-inflammation/10-defensive.html)

Use the following workshops to revise your knowledge

- [Programming with Python](https://swcarpentry.github.io/python-novice-inflammation/)
- [Plotting and Programming in Python](https://swcarpentry.github.io/python-novice-gapminder/)

:::::::::::::::::::::::::::

## Setup the Enviroment

These course uses a Python3x environment, with the following packages:

- numpy
- matplotlib
- pytest

To run exercises and challenges, no particular version of the above package are required.

For completeness all the material presented here has been developed in the following enviroment

- Python Version: `3.13.1`
with the following enviroment.
- `numpy==2.2.4`
- `matplotlib==3.10.1`
- `pytest==8.3.5`

If any of the above package is missing use following command to install them:
```python 
pip install package==version
```
For example:
```python 
pip install numpy==2.2.4
```


