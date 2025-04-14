# Writing Readable Code

This course is intended for scientists with a basic to intermediate understanding of Python who wish to improve the quality of their code. Although Python is used as an example language, the general concepts can be applied to other languages. 

There are a few misconceptions that this course aims to correct:

- "I will always remember my code": The idea is that since I wrote the code, I will always be able to explain it to others. The reality is different. When a code is completed, used once or for a limited time, even the author will forget how it works or what it does. Therefore, when it is needed to be reused in the future, a lot of time is wasted trying to understand it. If the code is written, keeping in mind that we need to reuse it, we can write better code that requires less time to read. 

- "Code is for the computer to run". True, but also for people to read. Code is often more read than written. We read code when trying to modify it or add new features. If someone else wrote the codebase, we spent more time reading it and trying to understand how it works than writing new code to extend it. Creating a code for people will make it easy to read and maintain. This results in spending less time trying to understand the code.

- "Software engineers write good code. I am a scientist, I don't need to". Scientists use code for their research, and even if it is not their main outcome, code is sometimes the primary tool to reproduce the results. Often, they share their code with a large community so that other people can use it. If the code is not clear, not tested and not easy to extend, it cannot be easily used. Therefore, scientists must invest time in writing good-quality code. 

- "I don't have time for testing". Testing is the most underrated task in any coding activity. Design and writing tests require time, and although some testing is added to evaluate the code, coding projects often lack a reliable testing framework. The truth is testing can actually save time in the long run. Every time a code needs to be improved or extended, a test will be required to ensure that any change did not affect previous functionality. Testing also provides trust in the code and, therefore, in the results it produces. 

## Course Links

Please have a look at the content [here](https://magdag81.github.io/readable-code/index.html)

## Lesson Status
The course is in pre-alpha. 

## Course Design

The course is divided into four episodes:

- Episode 1: Write Readable Code
- Episode 2: Write Elegant Code
- Episode 3: Write Graceful Code
- Episode 4: Write Reliable Code

Each episode combines discussion and hands-on activities

##Course Delivery

The course is suitable for both instructor-led teaching and self-learning. 

## Enviroment

The course does not use and require any specific version of Python or packages, but it uses the following  

- numpy
- matplotlib
- Pytest

The setup used for this course is:
-Python 3.13.1
- numpy==2.2.4
- matplotlib==3.10.1
- pytest==8.3.5


# Contributions
All contributions to improve the lesson are welcome! 

If you wish to contribute, please familiarise yourself with [Contribution Guide](./CONTRIBUTING.md) and have a look at the detailed [guidelines](https://carpentries.github.io/lesson-example/) on proper formatting, instructions on compiling and rendering the lesson locally, and making any changes and adding new content or episodes.

## Author
Magda Guglielmo, CSIRO 

## Maintener
Magda Guglielmo, CSIRO   