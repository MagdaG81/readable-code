---
title: "Write Graceful Code"
teaching: 15
exercises: 8
---

:::::::::::::::::::::::::::::::::::::: questions 

- How to make code user-friendly?
- What practices can you adopt to ensure your Python code is robust and less prone to failures?
- Why is comprehensive error handling crucial for code reliability, and how can it be implemented effectively?
::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives
- Write Python User-Friendly code using docstrings
- Implement robust coding practices using Assertions and Raising Exceptions
- Develop and Apply Effective Error Handling Techniques
::::::::::::::::::::::::::::::::::::::::::::::::

Much like a carpenter uses the right tools to create sturdy and beautiful furniture, a programmer employs the right techniques to create robust code. This episode will equip you with the tools for building strong, error-resistant code.

## Making Python code User-Friendly

Consider the following code

``` python
def calculate_rectangle_area(width, height):
  
  area = width * height
  
  return area
  
```

At a glance, we can understand the purpose and functionality of this code. The function name `calculate_rectangle_area` is descriptive and tells us exactly what the function is meant to do. Similarly, the variables `width` and `height` are intuitively named, so we know they represent the dimensions of a rectangle. Even without deep programming knowledge, someone can infer what this code does. While the code is well-written, is this level of clarity sufficient for someone to run the code successfully? 

One important aspect missing from the example is the information about variable types. Without specifying that `width` and `height` should be numerical values (integers or floats), someone may inadvertently provide invalid inputs (e.g., strings) that would cause the function to fail.


:::::::::::::::::::::::::::::::::::::challenge

Write a code that uses the function calculate_rectangle_area with the following values for width and height and observe the function's behaviour. Call the function within a Python terminal and print the results.

1. width = 5.2 and height = 4.3
2. width = 5 and height = '4'
3. width = '5' and height = '4'  

:::::::::::::::::::::::::::::::::::::solution
```python 
# Case 1. The code gives the right result
>>print("width = 5.2 and height = 4.3 (both numerical):\n area = ",calculate_rectangle_area(5.2, 4.3))
width = 5.2 and height = 4.3 (both numerical): 
area =  22.36

# Case 2. The code multiplies the string (height) by 5, meaning that the string is repeated 5 times.
>> print("width = 5 and height = '4' (both numerical):\n area = ",calculate_rectangle_area(5, 4))
width = 5 and height = '4' (one numerical and one string)
area =  44444

# Case 3. The code raises a TypeError
>> print("width = '5' and height = '4' (one numerical and one string):\n area = ",calculate_rectangle_area('5', '4'))
[...]
TypeError: can't multiply sequence by non-int of type 'str'
```
::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::

## What can go wrong?
Users who interact with code without fully understanding it may make errors, causing the code to behave unexpectedly. In the best-case scenario, the execution may be disrupted, prompting the user to identify and correct the mistake. In the worst-case scenario, the code may execute without any visible errors but produce incorrect results, a situation known as a *silent failure*. Such failures often go unnoticed and are difficult to diagnose and fix.

Although we cannot predict what errors might occur, we can add in-line documentation that explains how to use a function or a piece of code and control misuse by returning errors or messages that allert the user when something goes wrong.

### Step 1: Tell how to use your code

It is impossible to predict how someone else will use our code. The best we can do is add extra information in the form of comments or, even better, *docstrings*. In Python, docstrings are string literals after defining a function, method, class, or module. They are used to document the specific segment of code they are associated with. 

The advantage of using docstrings is that they are used by the Python built-in function `help` to display the information without having to navigate through the source code. 
A better version of the function above can be:

``` python
def calculate_rectangle_area(width, height):
  """ Calculate the area of a rectangle, knowing its height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  area = width * height
  return area
  
```
In the docstring, we briefly describe what the function does, the arguments and their types, and the type of the returning variables.  

A user can then call the `help` function to understand how to use it. 
```python
>> help(calculate_rectangle_area)
calculate_rectangle_area(width, height)
    Calculate the area of a rectangle, knowing its height and width

    Args:
        width (float): The width of a rectangle
        height (float): The height of a rectangle

    Returns:
        float: area of the rectangle

```

### Step 2: Handle errors

The goal is to ensure that the code runs correctly and provides informative feedback to users when unexpected issues arise. Using comments and docstrings reduces the likelihood that code is used incorrectly. Sometimes, errors and bugs are somewhere else in the code, and they can be propagated without proper handling. These errors might be due to unexpected conditions, invalid inputs, hardware failures, or bugs in the code. 

In such scenarios, error handling becomes essential. By applying error handling techniques, developers can catch and resolve issues as they occur, provide meaningful error messages to users, and take appropriate actions to maintain code integrity. 

In Python, there are different techniques one can use to handle errors and exceptions properly. Here, we will focus on **assertions** and **error raising**.  

#### Assertions

An *assertion* is a statement that check if a given condition is true. If this is not the case, it returns an error message. The syntax is
``` python

assert Condition, 'Error message'
```

```python

> x = -1 
> assert x>0, 'x must be greater than 0' #check if the condition x>0 is true
----> 1assert x>0, 'x must be greater than 0' 

AssertionError: x must be greater than 0
```

Assertions can check multiple statements using the `and` and `or` operator

```python

> x = 3 
> assert x>0 and x<2 , 'x must be between 0 and 2' 
----> 1assert x>0 and x<2, 'x must be between 0 and 2'

AssertionError: AssertionError: x must be between 0 and 2
```

Functions that return a boolean output (True or False) can also be used. For example, a useful Python function that checks a variable type is `isinstance`. This function returns `True` if the type of a variable is of a given type or `False` otherwise. For example:

```python
> x = 3.5
> isinstance(x,float) # check if x is of type float. 
True
```

The `isistance` function can be used together with `assert` to check a variable is of the right type. For example:

```python
> x = "3.5" 
> assert isinstance(x,float), "x must be of type float"
[...]
AssertionError: x must be of type float
```

:::::::::::::::::::::::::::::::::::::challenge

Add assertion to the following code to check that `width` and `height` are of type `float`.


```python
def calculate_rectangle_area(width, height):
  """ Calculate the area of a rectangle, knowing its height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  area = width * height
  return area

print("width = 5.2 and height = 4.3 (both numerical): area = ",calculate_rectangle_area(5.2, 4.3))
print("width = 5 and height = '4' (both numerical): area = ",calculate_rectangle_area(5, 4))
```
:::::::::::::::::::::::::::::::::::::solution
```python
def calculate_rectangle_area(width, height):

  """ Calculate the area of a rectangle, knowing its height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  assert isinstance(width, float) and isinstance(height, float), "Input must be of type float"
  area = width * height
  return area
```
:::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::


#### Raise

Another way to throw exceptions and errors is to use the Python `raise` keyword. With `raise`, you can trigger both built-in and custom exceptions. It is similar to `assert`, but it is used to signal runtime errors. The `raise` keyword is generally used within an if-statement that checks for a specific condition.

```python 
x = -1
if x < 0 : #make sure that x is always greater than 0
  
   raise Exception("x must be greater than 0")
     1 if x < 0 : #make sure that x is always greater than 0
---> 3    raise Exception("x must be greater than 0")

Exception: x must be greater than 0
```
The code raises a general `Exception` when the variable is less than zero. `Exception` is a built-in Python error type indicating a generic error. Python has different [error types](https://docs.python.org/3/library/exceptions.html) that can be used in specific situations. 
The most common are:

| Error Type           | Description                                                                                  |
|----------------------|----------------------------------------------------------------------------------------------|
| `TypeError`          | Happens when an operation or function is applied to an object of inappropriate type.          |
| `NameError`          | Occurs when a local or global name is not found.                                              |
| `ValueError`         | Raised when a function receives an argument of the correct type but inappropriate value.      |
| `IndexError`         | Happens when trying to access an index that is out of the range of a list or tuple.           |
| `KeyError`           | Raised when trying to access a dictionary with a key that does not exist.                     |
| `ZeroDivisionError`  | Raised when dividing by zero.                                                                 |
| `FileNotFoundError`  | Occurs when trying to open a file that does not exist.                                        |
| `RuntimeError`       | Raised when an error does not fall under any other category.                                  |


  

:::::::::::::::::::::::::::::::::::::challenge
Let us consider the code below and modify it so that it raises an error if any of the input parameters are less than zero. 
What is the more appropriate error type?

```python
def calculate_rectangle_area(width, height):
  """ Calculate the area of a rectangle, knowing its height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  area = width * height
  return area

#you can test running the following code
area = calculate_rectangle_area(-5.1, 3.2)
```

:::::::::::::::::::::::::::::::::::::solution

In this case, the code should raise a `ValueError`.
```python
def calculate_rectangle_area(width, height):
  """ Calculate the area of a rectangle, knowing its height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  if width < 0 or height < 0:
    raise ValueError("width and height must be positive values")
  area = width * height
  return area
```
:::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints 

 
- *Docstrings* provide clear documentation of your code and improve its readability and usability.
- *Error handling techniques* help build robust code. The idea is to anticipate potential errors and to implement mechanisms to handle them gracefully.
  - *Assertions* ensure that certain conditions are met during code execution.
  - By *raising specific exceptions* (e.g. `TypeError`, `ValueError`), you can not only control the behaviour of your code when things go wrong but also inform the user that something is right.

::::::::::::::::::::::::::::::::::::::::::::::::
