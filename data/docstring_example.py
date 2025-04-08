 
def calculate_rectangle_area(width, height):

  """ Calculate the area of a rectangle knowing is height and width

  Args:
      width (float): The width of a rectangle
      height (float): The height of a rectangle

  Returns:
      float: area of the rectangle
  """
  assert isinstance(width, float) and isinstance(height, float), "Input must be of type float"
  if width < 0 or height < 0:
    raise ValueError("width and height must be positive values")
  area = width * height
  return area



# print("width = 5.2 and height = 4.3 (both numerical): area = ",calculate_rectangle_area(5.2, 4.3))
# # Case 2. The code multiply the string (height) by the 5
# print("width = 5 and height = '4' (both numerical): area = ",calculate_rectangle_area(5, 4))

# Case 3. The code raises a TypeError
#print("width = '5' and height = '4' (one numerical and one string) area = ",calculate_rectangle_area('5', '4'))
