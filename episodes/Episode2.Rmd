---
title: 'Write Elegant Code'
teaching: 5
exercises: 5
---

:::::::::::::::::::::::::::::::::::::: questions 

- Why is it important to choose meaningful names in your code?
- What are some good practices for naming variables and functions?
- How can meaningful names improve the maintainability and readability of code?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Understand the importance of choosing meaningful names in coding.
- Learn best practices for naming variables, functions, classes, and modules.
- Improve the readability and maintainability of your code by choosing clear and descriptive names.

::::::::::::::::::::::::::::::::::::::::::::::::

Similarly to well-written prose, elegant code communicates its intent clearly, making it easy to read and understand. 
Like writers who carefully choose words to craft compelling prose, programmers should select names for variables, functions, and classes to create readable and maintainable code.  
In this episode, we'll explore the art of crafting meaningful names that make your code functional and a pleasure to work with.

## The importance of meaningful names 

In coding, names are everywhere. We need to name variables, functions, classes and files, and we do that as soon as we open the editor. However, rarely do we invest time in choosing _good names_. We tend to choose names that make sense to us, following our intuition or understanding of the problem. But would these names make sense to someone else? 

Variable names serve as the first indicator of what the code does, providing initial answers to key questions: what it does, how it works, and why it exists. 

Consider the following code

```python
a = 100 
b = 2
c = a/b
```
Without context, you can only understand that `c` is the ratio between the other variables (`a` and `b`). Nothing tells you why `c` is defined this way, what the code's intention is, and so on. It can be anything. 

One can argue that you can improve the code by adding comments. For example
```python
a = 100 #distance in km
b = 2 #time in hour
c = a/b #velocity in km/hour
```
On the other hand, by simply changing the names of the variables, you achieve the same goal without adding unnecessary comments.  
```python
distance = 100  # in km
time = 2 # in hour
velocity = distance/time # in km/hour
```
In the code above, comments are used only to provide extra information that cannot be inferred by the code alone.

::::::::::::::::::::::::::::::::::::::callout
If a name requires a comment, it is not a good name
::::::::::::::::::::::::::::::::::::::::::::


## Guidelines to choose good names

>There are only two hard things in Computer Science: cache invalidation and naming things.
>Phil Karlton

Choosing good names is hard, and sometimes, it is more difficult than writing code itself. It seems an extra layer of complication or even a blocker for your code project. However, remember that your aim is to write a code everyone can read and understand to make it easier for the following user or developer to work with. So, the little effort you invest in naming will pay off in the long run. The good news is that there are guidelines to help you in the process. 

## Avoid abbreviation and single letter names, but be descriptive and specific

In science, we are used to having single letters to identify constants, for example, _g_ for gravity, _h_ for Planck's constant, etc. It comes naturally to use the same convention for variables in our code. However, single-letter variables don't always work well. The same letter might be used to indicate different variables in another field and, therefore, might generate confusion (it is hard to predict a user's background). 

They also add an extra, more practicable, problem: searching for a single letter in your code is hard. So, use single letters only as a loop variable or when their role and intent can be easily understood. 

The same applies to abbreviations: they can easily be misinterpreted, creating ambiguity in the code.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

The variable defines a relative velocity; the `rlt` stands for `relative`. 
Try to spell the `v_lrt` aloud to show how difficult it is. 

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 

::::::::::::::::::::::::::::::::::::: discussion 

Considering the following variable and try to answer the questions:
- What does `v_rlt` mean?
- If `v` stands for velocity, what does `rlt` mean?
```python 
v_rlt = 100 # km/h
```
::::::::::::::::::::::::::::::::::::: 

### Use nouns, verbs and questions to name different component

Common recommendations are:

- **Nouns are used for naming modules and classes**. This is because modules and classes play a specific role in the structure of the code. For example, classes generally represent real-world objects or entities within a domain (like `Particles` and `Species`), and using nouns makes it clear what kind of object the class represents. Similarly, modules group together different functionalities with a similar purpose and nouns can express what they are about. 

- **Verbs are used for function and methods**. Functions are designed to perform an action, and using verbs in their name helps understand what action they perform (e.g. `calculate_velocity`, `visualise_data`).

- **Questions are used for boolean**. A boolean variable can take only two values, `True` and `False`, and questions naturally align with evaluating conditions, for example `, is_even` and `is_running`.

### Avoid magic numbers

A magic number is a value hard-coded directly in the source code. Essentially, magic numbers are unnamed variables that appear without an explanation. Usually, we use them when working with constant values, and the underlying assumption is that they will not change or we don't expect to change. The problem arises when someone else reads our code: without extra information, it won't be clear what they are, and they will look like some random code without significance. The big issue is when we need to change the numbers. If the code is simple enough and somehow it is clear what they represent, we could just replace them. However, the same number may be used somewhere else in the code, forcing us to check every line of the code. Even one magic number can increase the code’s complexity, making it difficult to understand and extend.

Instead of hard-coded numbers, defining them as constants with descriptive names is good practice. 

**Constants** are generally defined using **capital letters** with underscores separating words, like `THRESHOLD`, `PLANCK_CONSTANT` and so on. 


::::::::::::::::::::::::::::::::::::: challenge 
## Challenge

Considering the code below
- What do you think about the clarity of the code?
- Are there any magic numbers? What problem could they cause?
- Why is it beneficial to remove them?

```python 

def calculate_gravitational_force(mass1, mass2, distance):
  force = (6.67430e-11 * mass1 * mass2) / (distance ** 2)
  return force

def calculate_gravitational_potential_energy(mass1, mass2, distance):
  potential_energy = (6.67430e-11 * mass1 * mass2) / distance
  return potential_energy

```

::::::::::::::::::::::::::::::::::::: solution

The code uses consistent names for the two functions, which are self-explanatory. They have an explicit return statement and robust logic: take inputs, perform calculations, and return results. 

They both have the same magic number, and it's unclear what it represents without sufficient context or knowledge. It is difficult to maintain as changing the constant implies changing the value in different places. 

A better version can be:
```python 

GRAVITATIONAL_CONSTANT = 6.67430e-11 # m^3/kg/s^2

def calculate_gravitational_force(mass1, mass2, distance):
  force = (GRAVITATIONAL_CONSTANT * mass1 * mass2) / (distance ** 2)
  return force

def calculate_gravitational_potential_energy(mass1, mass2, distance):
  potential_energy = (GRAVITATIONAL_CONSTANT * mass1 * mass2) / distance
  return potential_energy

```
:::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::: 

## Naming styles

Naming conventions are an important part of any programming language coding style. These conventions help to maintain consistency in the code.
More information about naming conventions in Pythoncan be found [PEP8-Style Guide for Python code](https://peps.python.org/pep-0008/#naming-conventions).

::::::::::::::::::::::::::::::::::::: keypoints 

 
- Naming variables is an important step to improve code readability.
- A good name can explain the intent of the code without extra information.
- Some guidelines can help name variables, functions, and modules.
- Avoid single letters, ambiguous names and magic numbers in your code
- Be consistent.

::::::::::::::::::::::::::::::::::::::::::::::::
 
