---
title: 'Write Readable Code'
teaching: 15
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- What is readable code?
- Why invest effort in writing readable code?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Define readable code
- What is the difference between readable and unreadable code
- What to think when writing code for people to read

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction


The expression _readable code_ might sound strange at first. Code is meant to be written and executed, right? Why should it be readable? After all, code is for a machine to perform, and a machine does not “read” as we do. So why bother?

The untold truth is that whenever someone wants to add a new feature or modify an existing one, they need to understand how the existing code works first, so they need to read the code to see how it works. That person might be another developer or collaborator, or it might be you months later. If a code is messy, unstructured and without documentation, reading and understanding it becomes more complicated and time-consuming. On the other hand, well-written code reads like a well-written novel: easy to follow and easy to understand.

So, writing readable code from scratch reduces the need for extensive explanations later.   

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Ask the learners about what they think about the following code. The point is to make them read it and tell how easy/difficult it is. The function visualizes a spiral, where the radius of each point increases linearly from the centre outward, and the points are positioned according to their respective angles in the given input array.
To guide the discussion, use some of the following questions
What do you think this code does?
- Can you use it?
- What do r, x, and y represent in this code? Are these names intuitive?
What to point out:
- There is no information about the input parameter: should it be a list? A single value?
- The names of the function, variables are poorly chosen.
- The function does not handle the output well. It creates points in polar coordinates, but it does not return them. It shows the plot without returning it or allowing for extra steps.
d
To run the function (if necessary):
```python
t = np.linspace(0,4*np.pi, 1000)
f(t)
```
**Suggestion**: Take note of the main points you might need for the following discussions.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: discussion 

## Discussion: What do you think about the following code? 

Without additional context, can you easily understand what the function is intended to do?
```python
import numpy as np
import matplotlib.pyplot as plt

def f(t):
  r = np.linspace(0,1,len(t))
  x = r * np.cos(t)
  y = r * np.sin(t)
  plt.plot(x,y)
  plt.show()
```
::::::::::::::::::::::::::::::::

## What is **readable code**?
 
A readable code is a code that clearly shows what it does and why without much effort. 
To make our code readable, we should focus on

- **Clarity**: Everything in the code, from variable names to functions, is straightforward and unambiguous.
- **Simplicity**: It should be as simple as possible.
- **Structure**: The code should be well organised into sections (e.g. functions, modules).
- **Minimal redundancy**: Reducing code duplications makes the code more efficient and easier to modify.
- **Documentation**: Writing clear code is the first step, but it does not always explain the "why" behind it. In-line comments or external documentation might explain the reasoning and intent. 



::::::::::::::::::::::::::::::::::::: discussion

## Discussion: What would you do to improve the following code? 


```python
import numpy as np
import matplotlib.pyplot as plt

def f(t):
  r = np.linspace(0,1,len(t))
  x = r * np.cos(t)
  y = r * np.sin(t)
  plt.plot(x,y)
  plt.show()
```
::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor
**Require Live coding**
The aim of  the above discussion is to modify and improve the code together, focusing on the points identified in the previous discussion.
The simpler solution might be just to focus on the names and add some comments. 
```python
#Plot a spiral in polar coordianate
#for a given list of theta values

def plot_spiral(theta):
  # Creates an array of evenly spaced radius values from 0 to 1. 
  # The final array has the same number of element than theta
  radius = np.linspace(0,1,len(theta)) 
  # Converts polar coordinates to Cartesian
  x_coordinate = radius * np.cos(theta)
  y_coordinate = radius * np.sin(theta)
  plt.plot(x_coordinate,y_coordinate)
  plt.show()
```
The point is to show that simple modification can improve code readability. 

A better version can be:

```python
import numpy as np
import matplotlib.pyplot as plt

# Calculate polar coordinate for an array of angles.

def calculate_polarcoordinate(theta): #Meaningful names: changed names of the function and input argument

  # Creates an array of evenly spaced radius values from 0 to 1. 
  # The final array has the same number of element than theta
  radius = np.linspace(0,1,len(theta))
  # Converts polar coordinates to Cartesian
  x_coordinate = radius * np.cos(theta)
  y_coordinate = radius * np.sin(theta)
  
  return x_coordinate, y_coordinate #Better output handling

#plot a spiral in polar coordinate
def visualise_spiral_polar_coordinates(x_coordinate,y_coordinate): #split data and visualisation

  plt.plot(x_coordinate, y_coordinate)
  plt.xlabel('x')
  plt.ylabel('y')
  plt.title('Spiral in Polar Coordinates')
  plt.show() 
```
**Focus on the change**:

- Better variable and function names make the code self-explanatory
- Separation of Concern: The original function has been split in two so that it is clear what happens
- Let them focus on the fact that the `radius` definition depends on two magic numbers, 0 and 1.
- This example can be used to introduce the DRY and SoC principles.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Why does structured code improve readability?

Imagine reading a document like the one below

::::::::::::::::::::::::::::::::::::::callout
## 
This is a document that has no punctuation or structure it just keeps going on and on without any breaks or organization the words run together endlessly making it very difficult to understand what the author is trying to communicate the text flows continuously without any separation between ideas or concepts it becomes increasingly hard to follow the train of thought as the words keep flowing together in an endless stream of characters without any visual breaks or formatting to help guide the reader through the content
The text is a continuous, unbroken sequence of words. It might contain the most deep considerations or be the most interesting document, but reading it is hard. 
The challenge is to find specific information, where one idea starts or ends. To modify this wall of words is even more complex: how can you be sure that changes will not affect another part? 
::::::::::::::::::::::::::::::::::::::

This unstructured text is how unstructured code appears. Just as this text lacks punctuation, paragraphs, and formatting, unstructured code lacks modular organization, clear separation of functions, and logical flow control that makes structured code readable and maintainable. 

Several coding design principles can help create structured code. These principles provide guidelines on what to consider and avoid when creating code. Among all, two shine for simplicity and effectiveness:  

- **Separation of Concern** (**SoC**): This design principle separates a program into distinct sections. Each section (e.g., function or module) does one thing only, and it should be able to work independently. SoC helps create a clear code structure, improving the code readability and reusability. Indeed, each component can be reused across different parts of the code and projects.

- **DRY**: DRY stands for "Don't Repeat Yourself". The statement is clear: Each piece of code should only appear once. Code duplications are nightmares. Every time something needs to change, the changes must be applied in different parts of the codebase. When common logic is extracted into reusable components, any changes will only happen in one place, improving the maintainability of the code. 

Let's see an example of how applying these two principles improves the code. 

::::::::::::::::::::::::::::::::::::: discussion
## From unstructured to structured code


The code below generate two datasets of points and apply linear regression. 
```python 

import numpy as np
import matplotlib.pyplot as plt

# Dataset 1
X = np.array([1, 2, 3, 4, 5])
y = 2 * X + 1 + np.random.normal(0, 0.5, len(X))

# Calculate coefficients using np.linalg
A = np.vstack([X, np.ones(len(X))]).T
coefficients = np.linalg.lstsq(A, y, rcond=None)[0]
m, b = coefficients


# Dataset 2 
X1 = np.array([1, 2, 3, 4, 5])
y1 = 1.5 * X1 + 0.5 + np.random.normal(0, 0.5, len(X))

A1 = np.vstack([X1, np.ones(len(X1))]).T
coefficients1 = np.linalg.lstsq(A1, y1, rcond=None)[0]
m1, b1 = coefficients1


# Verify all calculations give same result
print("Case 1: Slope: = ",round(m,4),"intercept =",round(b,4))
print("Case 2: Slope: = ",round(m1,4),"intercept =",round(b1,4))
```
The code works as expected and appears straightforward but violates both principles. Let us see why. 

**DRY Principle violations**

The code that creates the two arrays `X` and `X1` is the same; this means that if we need to change one array, we need to apply the changes twice. Similarly, the code that calculates the slope and intercepts is repeated for both datasets. 

**SoC Principle violations**

Although the operations appear sequentially, the code has no clear structure. They depend on the previous one, meaning that changing one part of the code will change everything else, so code blocks are not independent. Also, the concerns are mixed together with no clear separation.  

These violations generate a lot of problems: what if you need to reuse the code? What if you need to apply to a different dataset? What if you need to repeat the same calculation for 100 datasets? Would any of these modifications be easy?

Below, a different version of the code that tries to correct these violations is presented. 

```python 

import numpy as np
import matplotlib.pyplot as plt

# Generate Y data using linear equation y=mx+b with Gaussian noise 
def generate_data(x_values, slope, intercept):
    
    y_values = slope * x_values + intercept + np.random.normal(0, 0.5, len(x_values)) 
    return y_values

# Get linear regression coefficient
def fit_linear_regression(x_values, y_values):
    A = np.vstack([X, np.ones(len(x_values))]).T
    coefficients = np.linalg.lstsq(A, y_values, rcond=None)[0] 
    return 
    
# Usage
base_X = np.array([1, 2, 3, 4, 5])
case1_y = generate_data(base_X, 2.0, 1.0)
case2_y = generate_data(base_X, 1.5, 0.5)

m, b = fit_linear_regression(base_X, case1_y)
verify_coefficients(m, b)

m1, b1 = fit_linear_regression(base_X, case2_y)
verify_coefficients(m1, b1)
```
This new version uses a single data generation function for both cases and a single linear regression function that can be applied to both datasets. These two functions fix all the DRY violations. At the same time, they also solve the SoC violations: each new function has one scope and clearly separates the data generations and model fittings. 

This improved structure makes the code more maintainable, testable, and easier to extend while eliminating redundant calculations and mixed responsibilities.
:::::::::::::::::::::::::::::::::::::::
## Tips

By writing code for people to read, you improve the maintainability and usability of your code. This ensures that others (and your future self) can easily understand, modify, and extend the code.

Writing readable code requires a bit more effort, but there are a few tips that make it simpler like:
- **Be kind with your future self** you will thereby also be kind to others who come to your code.
- **Use meaningful variable names**.
- **Break down complex functions into smaller functions**.
- **Add comments to explain the "why" behind your code**.

::::::::::::::::::::::::::::::::::::: keypoints 

 
- **Clarity**: Make sure your code is easy to understand.
- **Simplicity**: Keep the code simple and avoid unnecessary complexity.
- **Structure**: Organize your code well (e.g., use functions, classes, and modules appropriately).
- **Minimal Redundancy**: Avoid code duplication to improve efficiency.
- **Documentation**: Add comments to clarify the logic and intent behind your code.

::::::::::::::::::::::::::::::::::::::::::::::::

