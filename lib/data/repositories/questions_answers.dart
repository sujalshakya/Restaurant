// ignore_for_file: unnecessary_string_escapes, prefer_adjacent_string_concatenation
import 'package:flutter/material.dart';

class QuestionsAnswers extends StatelessWidget {
  static final List<Map<String, dynamic>> questionsList = [
  {
  "no": 1,
  "q": "Write a program to display volume of sphere",
  "a": '''
function sphereVolume(radius)
   local volume = (4/3) * math.pi * radius * radius * radius
   return volume
end

local radius = 5 -- Replace with your desired radius
print("Volume of the sphere:", sphereVolume(radius))
''',
  "shown": false,
  "input": "input",
  "output": "output",
  "explanation":'''This Lua code calculates the volume of a sphere using its radius. The `sphereVolume` function applies the formula (4/3) * π * radius^3 to find the volume. The code sets a specific radius value and then calls the function to compute and display the sphere's volume. This succinct code snippet demonstrates a straightforward method to determine the volume of a sphere based on its radius.
 ''',
  "e": "Step 1: Start\n"
  "Step 2: Input Radius Of Sphere ( R )\n"
  "Step 3: V = 4 / 3 * 3.14  * R ^ 3\n"
  "Step 4: Print “Volume Of Sphere” V\n"
  "Step 5: Stop/End\n",
  "f": "https://allbachelor.com/wp-content/uploads/2022/10/1.png",
  "category": "basic",
},
{
"no": 2,
"q": "Write a program to display area of 4 walls.",
"a": '''
function wallArea(length, width, height)
   local area = 2 * height * (length + width)
   return area
end

local length = 10 -- Replace with your wall length
local width = 5   -- Replace with your wall width
local height = 3  -- Replace with your wall height
print("Total wall area:", wallArea(length, width, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total area of four walls in a room. The `wallArea` function computes the surface area by considering the height and the sum of the lengths and widths of the walls. The code sets specific values for the room's wall length, width, and height. It then calls the function to calculate and display the total wall area. This concise code segment effectively determines the surface area of walls based on their dimensions, simplifying the calculation process.
''',
"e": "Step 1: Start\n"
"Step 2: Input length, breadth and height (l, b, h)\n"
"Step 3: A = 2 * h * ( l + b ) \n"
"Step 4: Display A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/2-min.png",
"category": "basic"
},
{
"no": 3,
"q":
"Write a program to display total surface area and volume of cuboid.",
"a": '''
    function cuboidSurfaceArea(length, width, height)
   local surfaceArea = 2 * (length*width + width*height + height*length)
   return surfaceArea
end

function cuboidVolume(length, width, height)
   local volume = length * width * height
   return volume
end

local length = 8  -- Replace with your cuboid length
local width = 4   -- Replace with your cuboid width
local height = 6  -- Replace with your cuboid height
print("Total surface area:", cuboidSurfaceArea(length, width, height))
print("Volume:", cuboidVolume(length, width, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code calculates properties of a cuboid. The `cuboidSurfaceArea` function computes the total surface area using the sum of areas of all six sides, while the `cuboidVolume` function calculates the volume using the product of its dimensions. The code sets specific values for the cuboid's length, width, and height. It then calls both functions to calculate and display the total surface area and volume of the cuboid. This code snippet demonstrates the effective computation of surface area and volume for a cuboid using its dimensions.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input length, breadth and height of cuboid (l, b, h)\n"
"Step 3: A = 2 * ( l * b + b * h + h * l)\n"
"Step 4: V = l * b * h   \n"
"Step 5:  Print ”Total Surface Area Of Cuboid is” A\n"
"Step 6: Print “Volume Of Cuboid is ” V\n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/3-min.png"
},
{
"no": 4,
"q": "Write a program to display total surface area of cube. ",
"a": '''
   function cubeSurfaceArea(side)
   local surfaceArea = 6 * side * side
   return surfaceArea
end

local side = 7 -- Replace with your cube side length
print("Total surface area of the cube:", cubeSurfaceArea(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total surface area of a cube using its side length. The `cubeSurfaceArea` function applies the formula 6 * side^2 to compute the surface area. The code sets a specific value for the cube's side length and then calls the function to calculate and display the cube's total surface area. This concise code snippet illustrates a direct way to determine the surface area of a cube based on its side length.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input Side of Cube(L)\n"
"Step 3: T  = 6 * L ^ 2\n"
"Step 4: Print “ Total Surface Area of Cube” T\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/4-min.png"
},
{
"no": 5,
"q": "Write a program to display area of rectangle",
"a": '''
   function rectangleArea(length, width)
   local area = length * width
   return area
end

local length = 12 -- Replace with your rectangle length
local width = 6   -- Replace with your rectangle width
print("Area of the rectangle:", rectangleArea(length, width))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates the area of a rectangle using its length and width. The `rectangleArea` function multiplies the length and width to find the area. The code specifies specific values for the length and width of the rectangle, then calls the function to compute and display the rectangle's area. This simple code demonstrates how to efficiently determine the area of a rectangle based on its dimensions.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input length and breadth of rectangle (L ,B)\n"
"Step 3: A = L * B\n"
"Step 4: Print “ Area Of Rectangle ” A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/5-min.png"
},
{
"no": 6,
"q": "Write a program to display circumference of circle.",
"a": '''
function circleCircumference(radius)
   local circumference = 2 * math.pi * radius
   return circumference
end

local radius = 9 -- Replace with your circle radius
print("Circumference of the circle:", circleCircumference(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the circumference of a circle using its radius. The `circleCircumference` function employs the formula 2 * π * radius to determine the circumference. The code sets a specific radius value and then calls the function to compute and display the circle's circumference. This concise code segment showcases a straightforward method to find the circumference of a circle based on its radius.
''',
"e": "Step 1: Start\n"
"Step 2: Input Radius (R)\n"
"Step 3: C = 2 * 3.14 * R\n"
"Step 4: Print “ Circumference of Circle ” C\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/6-min.png"
},
{
"no": 7,
"q":
"Write a program to display area of triangle when three sides are given.",
"a": '''
   function triangleArea(side1, side2, side3)
   local s = (side1 + side2 + side3) / 2
   local area = math.sqrt(s * (s - side1) * (s - side2) * (s - side3))
   return area
end

local side1 = 5 -- Replace with your triangle's side lengths
local side2 = 7
local side3 = 8
print("Area of the triangle:", triangleArea(side1, side2, side3))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code calculates the area of a triangle using its side lengths. The function `triangleArea` uses Heron's formula, where 's' is the semi-perimeter of the triangle, and the area is computed as the square root of the product of 's' and the differences between 's' and each side length. The code then specifies three side lengths and calls the function to determine the triangle's area. The result is displayed as the output. This code demonstrates an effective way to compute the area of a triangle using its side lengths.
''',
"e": "Step 1: Start\n"
"Step 2: Input Three Sides of Triangle (a, b, c)\n"
"Step 3: s = a + b + c  / 2\n"
"Step 4: AR = (s * (s - a) *(s - b)*(s-c)) ^ 1/ 2\n"
"Step 5: Print Area of Triangle as AR\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/7-min.png"
},
{
"no": 8,
"q": "Write a program to display area and circumference of circle.",
"a": '''
    function circleArea(radius)
   local area = math.pi * radius * radius
   return area
end

function circleCircumference(radius)
   local circumference = 2 * math.pi * radius
   return circumference
end

local radius = 10 -- Replace with your circle radius
print("Area of the circle:", circleArea(radius))
print("Circumference of the circle:", circleCircumference(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates properties of a circle. Two functions are defined: `circleArea` computes the area of a circle using the formula π * radius^2, and `circleCircumference` calculates its circumference using 2 * π * radius. The code then sets a specific radius value, and using this radius, it calls both functions to compute and display the area and circumference of the circle. This code segment simplifies the calculation of circle-related properties and showcases the fundamental mathematical relationships between radius, area, and circumference.
''',
"e": "Step 1: Start\n"
"Step 2: Input Radius ( R )\n"
"Step 3: 3.14 * R ^ 2\n"
"Step 4: C = 2 * 3.14 * R\n"
"Step 5: Print “ Area of Circle ” A\n"
"Step 6: Print “ Circumference of Circle ” C\n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/8-min.png"
},
{
"no": 9,
"q":
"Write a program to ask distance in kilometer and convert into miles ",
"a": '''
    function kmToMiles(kilometers)
   local miles = kilometers * 0.621371
   return miles
end

print("Enter distance in kilometers:")
local kilometers = tonumber(io.read())
print("Distance in miles:", kmToMiles(kilometers))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function `kmToMiles` to convert distances from kilometers to miles using a conversion factor. The program prompts the user to input a distance in kilometers, reads the input, and then applies the `kmToMiles` function to calculate the equivalent distance in miles. The resulting distance in miles is displayed as the output. This code snippet simplifies the process of converting distances between kilometers and miles accurately.
''',

"e": "Step 1: Start \n"
" Step 2: Input distance in km (K)\n"
" Step 3: M = K * 0.62 \n"
" Step 4: Print “ Distance in Miles” M\n"
" Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/9-min.png"
},
{
"no": 10,
"q":
"Write a program to input distance in meter and convert into kilometer and meter.",
"a": '''
-module(m_to_km).
-export([convert_m_to_km/1]).

convert_m_to_km(DistanceM) ->
   DistanceKm = DistanceM / 1000,
   io:format("~p meters is equal to ~p kilometers.~n", [DistanceM, DistanceKm]).
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Erlang module, named "m_to_km," focuses on converting a distance in meters to kilometers. The `convert_m_to_km/1` function accepts a distance in meters as input. Inside the function, the distance in kilometers is calculated by dividing the distance in meters by 1000, as there are 1000 meters in a kilometer. The `io:format` function is then used to display the converted distance along with an informative message. This module provides a simple and concise way to perform the conversion and present the result, making it useful for applications requiring unit conversion functionality.
''',
"e": "Step 1: Start\n"
"Step 2: Input distance in meter(m)\n"
"Step 3: k = m / 1000\n"
"Step 4: Print Kilometer: k\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/10-min.png"
},
{
"no": 11,
"q":
"Write a program to calculate potential energy of body. [PE=MGH where G=9.8]",
"a": '''function potentialEnergy(mass, height)
   local gravitationalConstant = 9.8
   local potentialEnergy = mass * gravitationalConstant * height
   return potentialEnergy
end

local mass = 10 -- Replace with your body's mass
local height = 3 -- Replace with the height
print("Potential energy of the body:", potentialEnergy(mass, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the potential energy of a body based on its mass and height. The `potentialEnergy` function uses the formula \(PE = mgh\), where \(m\) is mass, \(g\) is the gravitational constant (9.8 m/s²), and \(h\) is height. The code specifies values for mass and height, and then calls the function to calculate and display the potential energy of the body. This code demonstrates how to accurately compute potential energy for an object considering its mass and height within a gravitational field.
''',
"e": "Step 1: Start\n"
"Step 2: Input Mass and Height (M, H)\n"
"Step 3: P = M * 9.8 * H\n"
"Step 4: Print “ Potential Energy Of Body “ P\n"
"Step 6: Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/11-min.png"
},
{
"no": 12,
"q": "Write a program to display perimeter of rectangle.",
"a": '''
    function rectanglePerimeter(length, width)
   local perimeter = 2 * (length + width)
   return perimeter
end

local length = 10 -- Replace with your rectangle's length
local width = 5   -- Replace with your rectangle's width
print("Perimeter of the rectangle:", rectanglePerimeter(length, width))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code calculates the perimeter of a rectangle using its length and width. The `rectanglePerimeter` function applies the formula \(2 \times (l + w)\) to compute the perimeter. The code sets specific values for the rectangle's length and width, then calls the function to calculate and display the rectangle's perimeter. This concise code snippet provides an efficient way to determine the perimeter of a rectangle based on its dimensions.
''',
"e": "Step 1: Start\n"
"Step 2: Input Length and Breadth of Rectangle (L, B)\n"
"Step 3: P = 2 * (L + B)\n"
"Step 4: Print “Perimeter of Rectangle ” P\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/12-min.png"
},
{
"no": 13,
"q":
"Write a program to input principal   rate   time and display simple interest and total amount.",
"a": '''
function simpleInterest(principal, rate, time)
   local interest = (principal * rate * time) / 100
   local totalAmount = principal + interest
   return interest, totalAmount
end

local principal = 1000 -- Replace with your principal amount
local rate = 5        -- Replace with your interest rate
local time = 2        -- Replace with time in years
local interest, totalAmount = simpleInterest(principal, rate, time)
print("Simple interest:", interest)
print("Total amount:", totalAmount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates simple interest and total amount based on given inputs. The `simpleInterest` function computes the interest by multiplying principal, rate, and time, then dividing by 100. It also calculates the total amount by adding the interest to the principal. The code sets specific values for principal, rate, and time, and then calls the function to calculate and display the interest and total amount. This code segment effectively handles simple interest calculations and demonstrates how to determine both the interest and total amount accurately.
''',
"e": "Step 1: Start\n"
"Step 2: Input Principal, Time and Rate (P, T, R)\n"
"Step 3: I = (P * T * R) / 100\n"
"Step 4: A = P + I\n"
"Step 5: Print “ Simple Interest “ I\n"
"Step 6: Print “ Total Amount ” A\n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/13-min.png"
},
{
"no": 14,
"q": "Write a program to ask in kilogram and convert into grams.",
"a": '''
   function kgToGrams(kilograms)
   local grams = kilograms * 1000
   return grams
end

print("Enter weight in kilograms:")
local kilograms = tonumber(io.read())
print("Weight in grams:", kgToGrams(kilograms))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code converts weight from kilograms to grams. The `kgToGrams` function multiplies the weight in kilograms by 1000 to obtain the equivalent weight in grams. The code prompts the user to input weight in kilograms, reads the input, and then calls the function to calculate and display the weight in grams. This concise code snippet provides a simple and accurate way to convert weight units between kilograms and grams.
''',
"e": "Step 1: Start\n"
"Step 2: Input Value in Kilogram (K)\n"
"Step 3: G = K * 1000\n"
"Step 4: Print ”Value In Grams ”G\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/14-min.png"
},
{
"no": 15,
"q":
"Write a program to display total surface area and volume of sphere.",
"a": '''
   function sphereSurfaceArea(radius)
   local surfaceArea = 4 * math.pi * radius * radius
   return surfaceArea
end

function sphereVolume(radius)
   local volume = (4/3) * math.pi * radius * radius * radius
   return volume
end

local radius = 6 -- Replace with your sphere radius
print("Total surface area:", sphereSurfaceArea(radius))
print("Volume:", sphereVolume(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates properties of a sphere. The `sphereSurfaceArea` function computes the total surface area using the formula \(4\pi r^2\), while the `sphereVolume` function calculates the volume using the formula (4/3)* π* r^3. The code sets a specific radius value and then calls both functions to calculate and display the sphere's total surface area and volume. This code segment demonstrates how to efficiently determine both surface area and volume of a sphere based on its radius.
''',
"e": "Step 1: Start\n"
"Step 2: Input radius of sphere(r)\n"
"Step 3: A = 4 * 3.14 * r ^ 3\n"
"Step 4: V = (4 / 3) * 3.14 * r ^ 3\n"
"Step 5: Print Total Surface Area of Sphere is : A\n"
"  Print Volume of Sphere is: V\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/15-min.png"
},
{
"no": 16,
"q": "Write a program to display total surface area of cylinder.",
"a": '''
    function cylinderSurfaceArea(radius, height)
   local lateralSurfaceArea = 2 * math.pi * radius * height
   local baseSurfaceArea = 2 * math.pi * radius * radius
   local totalSurfaceArea = lateralSurfaceArea + baseSurfaceArea
   return totalSurfaceArea
end

local radius = 5   -- Replace with your cylinder radius
local height = 10  -- Replace with your cylinder height
print("Total surface area of the cylinder:", cylinderSurfaceArea(radius, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total surface area of a cylinder using its radius and height. The `cylinderSurfaceArea` function divides the cylinder's surface area into its lateral and base components, then sums them to find the total surface area. The code sets specific values for the cylinder's radius and height, and then calls the function to calculate and display the cylinder's total surface area. This code snippet effectively calculates the surface area of a cylinder using its dimensions, making it suitable for geometrical calculations.
''',
"e": "Step 1:  Start\n"
"Step 2: Input length(l), Breadth(b), Height(h)\n"
"Step 3: T = 2 * ( l * b + b * h + h * l)\n"
"Step 4: Print Total Surface Area of Cylinder is : T\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/16-min.png"
},
{
"no": 17,
"q": "Write a program to display total surface area of cuboid / box. ",
"a": '''
    function cuboidSurfaceArea(length, width, height)
   local surfaceArea = 2 * (length * width + width * height + height * length)
   return surfaceArea
end

local length = 8  -- Replace with your cuboid length
local width = 4   -- Replace with your cuboid width
local height = 6  -- Replace with your cuboid height
print("Total surface area of the cuboid:", cuboidSurfaceArea(length, width, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates the total surface area of a cuboid using its length, width, and height. The `cuboidSurfaceArea` function applies the formula \(2 \times (lw + wh + hl)\) to compute the surface area. The code specifies specific values for the cuboid's length, width, and height, then calls the function to calculate and display the cuboid's total surface area. This code segment provides a straightforward approach to determine the surface area of a cuboid based on its dimensions.
''',
"e": "Step 1 : Start\n"
"Step 2 : Input Length, Breadth and Height of Cuboid (L, B, H)\n"
"Step 3 : T = 2 * ( L * B + B * H + H * L)\n"
"Step 6 : Print “ Total Surface Area of Cuboid “ T\n"
"Step 7 : Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/17-min.png"
},
{
"no": 18,
"q": "Write a program to display area and perimeter of rectangle.",
"a": '''
    function rectangleArea(length, width)
   local area = length * width
   return area
end

function rectanglePerimeter(length, width)
   local perimeter = 2 * (length + width)
   return perimeter
end

local length = 12 -- Replace with your rectangle's length
local width = 6   -- Replace with your rectangle's width
print("Area of the rectangle:", rectangleArea(length, width))
print("Perimeter of the rectangle:", rectanglePerimeter(length, width))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates properties of a rectangle. The `rectangleArea` function computes the area by multiplying its length and width, while the `rectanglePerimeter` function calculates the perimeter by summing the sides' lengths. The code sets specific values for the rectangle's length and width, then calls both functions to calculate and display the area and perimeter. This code snippet demonstrates how to efficiently determine area and perimeter based on a rectangle's dimensions.
''',
"e": "Step 1: Start\n"
"Step 2: Input Length and Breadth of the Rectangle (L, B)\n"
"Step 3: A = L * B\n"
"Step 4: P = 2 * ( L + B )\n"
"Step 5: Print “ Area of Rectangle “ A\n"
"Step 6: Print “ Perimeter of Rectangle “ P\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/18-min.png"
},
{
"no": 19,
"q": "Write a program to display total surface area of sphere.",
"a": '''
    function sphereSurfaceArea(radius)
   local surfaceArea = 4 * math.pi * radius * radius
   return surfaceArea
end

local radius = 7 -- Replace with your sphere radius
print("Total surface area of the sphere:", sphereSurfaceArea(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code calculates the total surface area of a sphere using its radius. The `sphereSurfaceArea` function employs the formula \(4* π* r^2\) to compute the surface area. The code specifies a specific radius value and then calls the function to calculate and display the sphere's total surface area. This code segment illustrates a direct way to determine the surface area of a sphere based on its radius, providing a clear method for surface area calculation.
''',
"e": "Step 1: Start\n"
"Step 2: Input Radius (R)\n"
"Step 3:  A = 4 * 3.14 * R ^ 2\n"
"Step 4: Print “ Total Surface Area of Sphere “ A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/19-min.png"
},
{
"no": 20,
"q": "Write a program to calculate distance.[S=UT+1/2(AT2)]",
"a": '''
    function calculateDistance(initialVelocity, time, acceleration)
   local distance = initialVelocity * time + 0.5 * acceleration * time * time
   return distance
end

local initialVelocity = 10  -- Replace with your initial velocity
local time = 3              -- Replace with the time
local acceleration = 2      -- Replace with the acceleration
print("Distance:", calculateDistance(initialVelocity, time, acceleration))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates the distance traveled using the kinematic equation \(S = ut + (1/2)*at^2\), where (u) is the initial velocity, (t) is time, and (a) is acceleration. The `calculateDistance` function takes these inputs and computes the distance traveled. The code sets values for initial velocity, time, and acceleration, then calls the function to calculate and display the distance. This succinct code illustrates how to determine the distance traveled based on initial velocity, time, and acceleration, making it useful for physics-related calculations.
''',
"e": "Step 1: Start\n"
"Step 2: input velocity, time, acceleration (U, T, A)\n"
"Step 5: S = U * T + 1 / 2 * ( A * T ^ 2 )\n"
"Step 6: Print Distance Traveled is : S \n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/20-min.png"
},
{
"no": 21,
"q":
"Write a program to input principal,rate,time and display total amount. ",
"a": '''
    function calculateTotalAmount(principal, rate, time)
   local totalAmount = principal + (principal * rate * time) / 100
   return totalAmount
end

print("Enter principal amount:")
local principal = tonumber(io.read())
print("Enter rate of interest:")
local rate = tonumber(io.read())
print("Enter time in years:")
local time = tonumber(io.read())
print("Total amount:", calculateTotalAmount(principal, rate, time))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total amount given a principal amount, interest rate, and time. The `calculateTotalAmount` function uses the formula, [Total amount = principal + (principal * rate * time) / 100] to compute the total amount. The code prompts the user to input the principal amount, interest rate, and time in years, then calls the function to calculate and display the total amount. This succinct code snippet demonstrates how to calculate the total amount considering the principal, rate, and time.
''',
"e": "Step 1: Start \n"
"Step 2: Input Principal, Time and Rate (P, T, R)\n"
"Step 3: I = ( P * T * R ) / 100 \n"
"Step 4: A = P + I\n"
"Step 5: Print “ Total Amount “ A\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/21-min.png"
},
{
"no": 22,
"q": "Write a program to display area of square.",
"a": '''
    function squareArea(side)
   local area = side * side
   return area
end

local side = 6 -- Replace with your square's side length
print("Area of the square:", squareArea(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the area of a square using its side length. The `squareArea` function multiplies the side length by itself to find the area. The code specifies a specific value for the square's side length and then calls the function to calculate and display the square's area. This succinct code snippet effectively demonstrates how to determine the area of a square based on its side length.
''',
"e": "Step 1: Start\n"
"Step 2: Input Length (L)\n"
"Step 3: A = L ^ 2\n"
"Step 4: Print “ Area of Square “ A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/22-min.png"
},
{
"no": 23,
"q":
"Write a program to ask n number and print the sum of first n natural numbers.",
"a": '''
    print("Enter a positive integer:")
local n = tonumber(io.read())

local sum = 0
for i = 1, n do
   sum = sum + i
end

print("Sum of first", n, "natural numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code snippet calculates the sum of the first ( n ) natural numbers. It prompts the user to input a positive integer ( n ), then uses a loop to iteratively add all numbers from 1 to ( n ) to the variable `sum`. After the loop completes, the code displays the sum of the first ( n ) natural numbers. If ( n ) is 10, the output will be "Sum of first 10 natural numbers: 55". This code succinctly demonstrates the computation of the sum of natural numbers up to a given value ( n ).
''',
"e": "Step 1: Start\n"
"Step 2: Enter the number (N)\n"
"Step 3: S = N * (N + 1) / 2\n"
"Step 4: Print \" Sum of \", N, \"Numbers is\", S\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/23-min.png"
},
{
"no": 24,
"q":
"Write a program to ask n number and print the sum square of first n natural numbers.",
"a": '''
   -- Main program
print("Enter a number:")
local n = tonumber(io.read())

local sum = 0
for i = 1, n do
    sum = sum + i * i
end

print("Sum of squares:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code provided serves as a main program that efficiently computes and reveals the sum of the squares of the first `n` natural numbers. Following user input for the value of `n`, the program initializes a variable named `sum` to store the accumulating total. Through a `for` loop, it iterates from 1 to `n`, squaring each value of `i` and adding it to the ongoing sum. Finally, the calculated sum of squared values is displayed with the statement "Sum of squares: sum". This code effectively showcases the aggregation of squared natural numbers, offering the sum of their resulting values as the final output.
''',
"e": "Step 1: Start\n"
"Step 2: Input the number (N)\n"
"Step 3: S = N * (N + 1) * (2 * N + 1) / 6\n"
"Step 4: Print “ Sum Of Square entered number is “ S\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/24-min.png"
},
{
"no": 25,
"q": "Write a program to display total surface area of hemisphere.",
"a": '''
     function hemisphereSurfaceArea(radius)
   local surfaceArea = 3 * math.pi * radius * radius
   return surfaceArea
end

local radius = 4 -- Replace with your hemisphere radius
print("Total surface area of the hemisphere:", hemisphereSurfaceArea(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total surface area of a hemisphere using its radius. The `hemisphereSurfaceArea` function employs the formula (3 * π *r^2\) to determine the surface area. The code specifies a specific radius value and then calls the function to calculate and display the hemisphere's total surface area. This code snippet demonstrates a direct way to determine the surface area of a hemisphere based on its radius, providing a simple and effective method for surface area calculation.
''',
"e": "n"
"Step 1: Start\n"
"Step 2: Input Radius (R)\n"
"Step 3: A = 3 * 3.14 * R ^ 2\n"
"Step 4: Print “ Total Surface Area of Hemisphere ” A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/25-min.png"
},
{
"no": 26,
"q": "Write a program to display area of circle ",
"a": '''
     function circleArea(radius)
   local area = math.pi * radius * radius
   return area
end

local radius = 8 -- Replace with your circle radius
print("Area of the circle:", circleArea(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the area of a circle using its radius. The `circleArea` function applies the formula π* r^2 to compute the area. The code sets a specific radius value and then calls the function to calculate and display the circle's area. This concise code segment illustrates a straightforward method to determine the area of a circle based on its radius.
''',
"e": "Step 1: Start\n"
"Step 2: Input Radius (R)\n"
"Step 3: A = 3.14 * R ^ 2 \n"
"Step 4: Print “ Area of Circle “ A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/26-min.png"
},
{
"no": 27,
"q":
"Write a program to display total surface area and volume of cylinder. ",
"a": '''
function cylinderSurfaceArea(radius, height)
   local lateralSurfaceArea = 2 * math.pi * radius * height
   local baseSurfaceArea = math.pi * radius * radius
   local totalSurfaceArea = lateralSurfaceArea + 2 * baseSurfaceArea
   return totalSurfaceArea
end

function cylinderVolume(radius, height)
   local volume = math.pi * radius * radius * height
   return volume
end

local radius = 5   -- Replace with your cylinder radius
local height = 10  -- Replace with your cylinder height
print("Total surface area:", cylinderSurfaceArea(radius, height))
print("Volume:", cylinderVolume(radius, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates properties of a cylinder. The `cylinderSurfaceArea` function computes the total surface area by summing the lateral surface area (2πrh) and the area of both circular bases (2πr²). The `cylinderVolume` function calculates the volume using the formula πr²h. The code sets specific values for the cylinder's radius and height, then calls both functions to calculate and display the total surface area and volume. This code snippet effectively demonstrates the computation of both surface area and volume for a cylinder using its dimensions.
'''  ,
"e": "Step 1: Start\n"
"Step 2: Input Radius and Height (R, H)\n"
"Step 3: A = 2 * 3.14 * R * ( R + H )\n"
"Step 4: V = 3.14 * R ^ 2 * H\n"
"Step 5: Print “ Total Surface Area of Cylinder “ A\n"
"Step 6: Print “ Volume Of Cylinder “ V\n"
"Step 7: Stop/ End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/27-min.png"
},
{
"no": 28,
"q":
"Write a program to ask the user to enter the marks in any four subject and display whether the user is pass or fail.",
"a": '''
    print("Enter marks in four subjects:")
local marks1 = tonumber(io.read())
local marks2 = tonumber(io.read())
local marks3 = tonumber(io.read())
local marks4 = tonumber(io.read())

local totalMarks = marks1 + marks2 + marks3 + marks4
local passMarks = 40 -- Adjust as per pass mark criteria

if totalMarks >= 4 * passMarks then
   print("Pass")
else
   print("Fail")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code determines whether a student passes or fails based on their marks in four subjects. The code prompts the user to input marks in each subject, then calculates the total marks obtained. It compares the total marks against four times the passing marks (40 in this case), and if the total is greater or equal, it displays "Pass"; otherwise, it displays "Fail". This concise code demonstrates a way to evaluate a student's passing status based on their marks in multiple subjects.
''',
"e": "Step 1: Start\n"
"Step 2: Input marks of any four subjects. (a , b, c, d)\n"
"Step 3: total = a + b + c + d\n"
"Step 4: avg = total / 4\n"
"Step 5: If avg > 40\n"
"GoTo Step 6\n"
"Else GoTo Step 7\n"
"Step 6: Print “ You are Pass” \n"
"GoTo Step 8\n"
"Step 7: Print “ You are Fail”\n"
"Step 8: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/28-min.png"
},
{
"no": 29,
"q": "Write a program to display volume of cylinder.  ",
"a": '''
    function cylinderVolume(radius, height)
   local volume = math.pi * radius * radius * height
   return volume
end

local radius = 6   -- Replace with your cylinder radius
local height = 12  -- Replace with your cylinder height
print("Volume of the cylinder:", cylinderVolume(radius, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the volume of a cylinder using its radius and height. The `cylinderVolume` function employs the formula (π* r^2 *h\) to compute the volume. The code sets specific values for the cylinder's radius and height, and then calls the function to calculate and display the cylinder's volume. This concise code segment provides an effective method to determine the volume of a cylinder based on its dimensions.
''',
"e": "Step 1: Start\n"
"Step 2: Input Radius and Height. (R, H)\n"
"Step 3: V = 3.14 * R ^ 2 * H\n"
"Step 4: “Volume of Cylinder” V\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/29-min.png"
},
{
"no": 30,
"q": "Write a program to display volume of hemisphere.",
"a": '''
function hemisphereVolume(radius)
   local volume = (2/3) * math.pi * radius * radius * radius
   return volume
end

local radius = 5 -- Replace with your hemisphere radius
print("Volume of the hemisphere:", hemisphereVolume(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates the volume of a hemisphere using its radius. The `hemisphereVolume` function applies the formula [(2/3)* π *r^3] to determine the volume. The code specifies a specific radius value and then calls the function to calculate and display the hemisphere's volume. This code snippet demonstrates how to efficiently compute the volume of a hemisphere based on its radius, providing a concise method for volume calculation.
     ''',
"e": "Step 1: Start\n"
"Step 2: Input Radius. ( R )\n"
"Step 3: V = ( 2 / 3 ) * 3.14 * R ^ 3\n"
"Step 4: Print “ Volume of Hemisphere” V\n"
"Step 5: Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/30-min.png"
},
{
"no": 31,
"q": "Write a program to display total surface area and volume of cube.",
"a": '''
    function cubeSurfaceArea(side)
   local surfaceArea = 6 * side * side
   return surfaceArea
end

function cubeVolume(side)
   local volume = side * side * side
   return volume
end

local side = 4 -- Replace with your cube side length
print("Total surface area of the cube:", cubeSurfaceArea(side))
print("Volume of the cube:", cubeVolume(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total surface area and volume of a cube using its side length. The `cubeSurfaceArea` function computes the surface area by multiplying the side length by itself and then by 6, reflecting the six sides of a cube. The `cubeVolume` function calculates the volume by cubing the side length. The code specifies a specific side length value and then calls both functions to calculate and display the cube's total surface area and volume. This code segment offers a clear and concise approach to determine both the surface area and volume of a cube based on its side length.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input Length. (L)\n"
"Step 3: A = 6 * L ^ 2\n"
"Step 4: V = L ^ 3\n"
"Step 5: Print “ Total Surface Area of Cube ” A\n"
"Step 6: Print “ Volume of Cube ” V\n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/31-min.png"
},
{
"no": 32,
"q": "Write a program to display area of triangle.",
"a": '''function triangleArea(base, height)
   local area = 0.5 * base * height
   return area
end

local base = 10   -- Replace with the triangle's base length
local height = 8  -- Replace with the triangle's height
print("Area of the triangle:", triangleArea(base, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the area of a triangle using its base length and height. The `triangleArea` function applies the formula [(1/2)*base *height] to determine the area. The code specifies specific values for the triangle's base length and height, and then calls the function to calculate and display the triangle's area. This concise code snippet effectively demonstrates how to compute the area of a triangle using its base and height measurements.
   ''',
"e": "Step 1: Start \n"
"Step 2: Input Breadth and Height. (B, H)\n"
"Step 3: A = 1/2 * ( B * H )\n"
"Step 4: Print “Area of triangle“ A\n"
"Step 5: Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/32-min.png"
},
{
"no": 33,
"q": "Write a program to display volume of cube ",
"a": '''
     function cubeVolume(side)
   local volume = side * side * side
   return volume
end

local side = 5   -- Replace with your cube side length
print("Volume of the cube:", cubeVolume(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the volume of a cube using its side length. The `cubeVolume` function applies the formula side*side*side to compute the volume. The code specifies a specific side length value and then calls the function to calculate and display the cube's volume. This succinct code segment demonstrates a direct method to determine the volume of a cube based on its side length, providing a simple and effective approach.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input Length. (L)\n"
"Step 3: V = L ^ 3\n"
"Step 4: Print “ Volume of Cube “ V\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/33-min.png"
},
{
"no": 34,
"q": "Write a program to display perimeter of square.",
"a": '''
    function squarePerimeter(side)
   local perimeter = 4 * side
   return perimeter
end

local side = 7 -- Replace with your square side length
print("Perimeter of the square:", squarePerimeter(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the perimeter of a square using its side length. The `squarePerimeter` function multiplies the side length by 4 to find the perimeter, as a square has four equal sides. The code specifies a specific side length value and then calls the function to calculate and display the square's perimeter. This concise code segment effectively demonstrates a straightforward approach to compute the perimeter of a square based on its side length.
'''  ,
"e": "Step 1: Start\n"
"Step 2: Input length of square(l)\n"
"Step 3: p = 4 * l\n"
"Step 4: Print p\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/34-min.png"
},
{
"no": 35,
"q": "Write a program to display area of parallelogram",
"a": '''
function parallelogramArea(base, height)
   local area = base * height
   return area
end

local base = 12   -- Replace with the parallelogram's base length
local height = 6  -- Replace with the parallelogram's height
print("Area of the parallelogram:", parallelogramArea(base, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the area of a parallelogram using its base length and height. The `parallelogramArea` function computes the area by multiplying the base length by the height. The code specifies specific values for the parallelogram's base length and height, and then calls the function to calculate and display the parallelogram's area. This succinct code snippet effectively demonstrates how to compute the area of a parallelogram using its base and height measurements.
'''  ,
"e": "Step 1: Start \n"
"Step 2: Input breadth and height of parallelogram(b, h)\n"
"Step 3: A = b * h\n"
"Step 4: Print Area is: A\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/35-min.png"
},
{
"no": 36,
"q": "Write a program to display volume of cuboid / box. ",
"a": '''
    function cuboidVolume(length, width, height)
   local volume = length * width * height
   return volume
end

local length = 8   -- Replace with your cuboid length
local width = 5    -- Replace with your cuboid width
local height = 10  -- Replace with your cuboid height
print("Volume of the cuboid:", cuboidVolume(length, width, height))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the volume of a cuboid (box) using its length, width, and height. The `cuboidVolume` function applies the formula length*height*width to compute the volume. The code specifies specific values for the cuboid's length, width, and height, and then calls the function to calculate and display the cuboid's volume. This concise code snippet demonstrates an efficient way to determine the volume of a cuboid based on its dimensions.
'''  ,
"e": "Step 1: Start\n"
"Step 2: input Length, Breadth and Height. (L, B, H)\n"
"Step 3: V = L * B * H\n"
"Step 4: Print “ Volume of Cuboid “ V\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/36-min.png"
},
{
"no": 37,
"q": "Write a program to ask value in meter and convert into inch.",
"a": '''
function metersToInches(meters)
   local inches = meters * 39.37
   return inches
end

print("Enter value in meters:")
local meters = tonumber(io.read())
print("Value in inches:", metersToInches(meters))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code converts a length value from meters to inches. The `metersToInches` function multiplies the input length in meters by the conversion factor 39.37 (since there are approximately 39.37 inches in a meter) to calculate the equivalent length in inches. The code prompts the user to enter a length value in meters, then calls the function to perform the conversion and displays the result in inches. This straightforward code snippet effectively demonstrates a method to convert lengths from meters to inches.
'''  ,
"e": "Step1: Start\n"
"Step 2:Input the length in Meter (M)\n"
"Step 3:  I = M * 39.37\n"
"Step 4:  Print “ Value In Inch “ I\n"
"Step 5:  Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/37-min.png"
},
{
"no": 38,
"q":
"Write a program to display total surface area and volume of hemisphere.",
"a": '''
     function hemisphereSurfaceArea(radius)
   local surfaceArea = 3 * math.pi * radius * radius
   return surfaceArea
end

function hemisphereVolume(radius)
   local volume = (2/3) * math.pi * radius * radius * radius
   return volume
end

local radius = 6 -- Replace with your hemisphere radius
print("Total surface area of the hemisphere:", hemisphereSurfaceArea(radius))
print("Volume of the hemisphere:", hemisphereVolume(radius))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the total surface area and volume of a hemisphere using its radius. The `hemisphereSurfaceArea` function employs the formula (3 \pi r^2\) to determine the surface area. The `hemisphereVolume` function uses the formula (2/3) * math.pi * radius * radius * radius  to calculate the volume. The code specifies a specific radius value and then calls both functions to compute and display the hemisphere's total surface area and volume. This code snippet demonstrates an effective way to calculate both surface area and volume for a hemisphere based on its radius, providing valuable geometric insights.
'''  ,
"e": "Step 1: Start\n"
"Step 2: input Radius. ( R )\n"
"Step 3: A = 3 * 3.14 * R ^ 2\n"
"Step 4: V = ( 2 / 3 ) * 3.14 * R ^ 3\n"
"Step 5: Print “ Total Surface Area OF Hemisphere “ A\n"
"Step 6: Print “ Volume of Hemisphere “ V\n"
"Step 7: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/38-min.png"
},
{
"no": 39,
"q": "Write a program to display area and perimeter of square.",
"a": '''
    function squareArea(side)
   local area = side * side
   return area
end

function squarePerimeter(side)
   local perimeter = 4 * side
   return perimeter
end

local side = 9 -- Replace with your square side length
print("Area of the square:", squareArea(side))
print("Perimeter of the square:", squarePerimeter(side))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates both the area and perimeter of a square using its side length. The `squareArea` function multiplies the side length by itself to find the area, while the `squarePerimeter` function calculates the perimeter by multiplying the side length by 4. The code specifies a specific value for the square's side length and then calls both functions to calculate and display the square's area and perimeter. This code snippet efficiently demonstrates how to compute both the area and perimeter of a square based on its side length.
'''  ,
"e": "Step 1: Start\n"
"Step 2: Input Length. (L)\n"
"Step 3: A = L ^ 2\n"
"Step 4: P = 4 * L\n"
"Step 5: Print “ Area of Square “ A\n"
"Step 6: Print “ Perimeter of Square “ P\n"
"Step 6: Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/39-min.png"
},
{
"no": 40,
"q":
"Write a program to display cost of painting the four walls of a room.",
"a": '''
    function wallPaintingCost(length, width, height, costPerSqMeter)
   local totalArea = 2 * (length + width) * height
   local totalCost = totalArea * costPerSqMeter
   return totalCost
end

local length = 12   -- Replace with the room's length
local width = 10    -- Replace with the room's width
local height = 8    -- Replace with the room's height
local costPerSqMeter = 5  -- Replace with the cost per square meter
print("Cost of painting the four walls:", wallPaintingCost(length, width, height, costPerSqMeter))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
''' This Lua code calculates the cost of painting the four walls of a room based on its dimensions and the cost per square meter. The `wallPaintingCost` function determines the total wall area by summing the areas of two opposite walls (length × height) and two adjacent walls (width × height), and then calculates the total cost by multiplying the total area with the provided cost per square meter. The code sets specific values for the room's length, width, height, and the cost per square meter, and then calls the function to compute and display the cost of painting the room's walls. This code snippet provides an efficient way to calculate the painting cost for a room given relevant parameters.
'''  ,
"e": "Step 1: Start\n"
"Step 2: Enter length, breadth, height and cost (l, b, h, c)\n"
"Step 3: A = 2 * h * (l + b)\n"
"Step 4: T =  c * A\n"
"Step 4: Print Cost is :T\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/40-min.png"
},
{
"no": 41,
"q": "Write a program to display simple interest",
"a": '''
    function calculateSimpleInterest(principal, rate, time)
   local interest = (principal * rate * time) / 100
   return interest
end

local principal = 1000   -- Replace with your principal amount
local rate = 5           -- Replace with your interest rate
local time = 2           -- Replace with time in years
local interest = calculateSimpleInterest(principal, rate, time)
print("Simple interest:", interest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function named `calculateSimpleInterest` that calculates the simple interest based on the given principal amount, interest rate, and time. The formula used is interest = (principal * rate * time) / 100. The function returns the calculated interest. In the main part of the code, the `principal`, `rate`, and `time` variables are set to specific values. The `calculateSimpleInterest` function is then called with these values, and the computed interest is displayed using the `print` function. This code snippet demonstrates a practical way to calculate and display the simple interest in Lua.
'''  ,
"e": "Step 1: Start\n"
"Step 2: input Principal, Time, Rate. (P, T, R)\n"
"Step 3: I = P * T *R / 100\n"
"Step 4: Print “ Simple Interest “ I\n"
"Step 5: Stop/End \n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/41-min.png"
},
{
"no": 42,
"q":
"Write a program to input number as paise and convert into rupees only.",
"a": '''
   print("Enter amount in paise:")
local paise = tonumber(io.read())
local rupees = paise / 100
print("Amount in rupees:", rupees)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input an amount in paise and then converts it into rupees by dividing the input by 100. The result is assigned to the variable 'rupees', and then it's displayed using the `print` function. This code demonstrates a straightforward method to convert an amount from paise to rupees in Lua.
''',
"e": "Step 1: Start\n"
"Step 2: Input Paisa. (P)\n"
"Step 3: RS = P / 100\n"
"Step 4: Print “ Rupees value = “ RS\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/42-min.png"
},
{
"no": 43,
"q":
"Write a program to input selling price and cost price calculate profit or loss percentage.",
"a": '''
   print("Enter cost price:")
local costPrice = tonumber(io.read())
print("Enter selling price:")
local sellingPrice = tonumber(io.read())

local profitOrLoss = sellingPrice - costPrice
local percentage = (profitOrLoss / costPrice) * 100

if profitOrLoss > 0 then
   print("Profit percentage:", percentage, "%")
elseif profitOrLoss < 0 then
   print("Loss percentage:", percentage, "%")
else
   print("No profit, no loss")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code takes input for the cost price and selling price of an item. It then calculates the profit or loss by subtracting the cost price from the selling price. The percentage of profit or loss is determined using the formula `percentage = (profitOrLoss / costPrice) * 100`. Depending on the value of `profitOrLoss`, the code uses conditional statements (`if`, `elseif`, and `else`) to display either the calculated profit percentage, loss percentage, or a message indicating no profit or loss. This code effectively calculates and displays the profit or loss percentage based on the input cost and selling prices in Lua.
''' ,
"e": "Step 1: Start\n"
"Step 2: Input cost price and selling price (cp, sp)\n"
"Step 3: If cp > sp Then\n"
"   GoTo Step 4\n"
"  Else if cp < sp GoTo Step 5\n"
"  Else GoTo Step 6\n"
"Step 4: LP = ((cp - sp) / cp) * 100\n"
"  GoTo Step 7\n"
"Step 5: PP = ((sp - cp) / cp) * 100\n"
"  GoTo Step 8\n"
"Step 6: Print Neither Profit or Loss\n"
"   GoTo Step 9\n"
"Step 7:Print Loss Percentage is : LP\n"
"   GoTo Step 9\n"
"Step 8: Print Profit Percentage is : PP\n"
"Step 9: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/43-min.png"
},
{
"no": 44,
"q":
"Write a program to input the day and display whether the day is Saturday or not?",
"a": '''
print("Enter a day:")
local day = io.read()

if day == "Saturday" or day == "saturday" then
   print("It's a Saturday!")
else
   print("It's not a Saturday.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to enter a day and then checks whether the input day is "Saturday" (case-insensitive) using an `if` statement. If the input matches "Saturday" or "saturday", the code prints "It's a Saturday!". Otherwise, it prints "It's not a Saturday." This code snippet effectively determines if the entered day is Saturday or not and provides an appropriate response using a simple conditional statement in Lua.
''' ,
"e": "Step 1: Start\n"
"Step 2: Input the today's day. d\n"
"Step 3: If d = “SATURDAY”\n"
"GoTo Step 4\n"
"Else GoTo Step 5 \n"
"Step 4: Print “ Today is Saturday “ \n"
"  GoTo Step 6\n"
"Step 5: Print “ Today is Not Saturday ”\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/44-min.png"
},
{
"no": 45,
"q":
"Write a program to ask quantity of pen,copy and pencil and their rate and find out the total amount.",
"a": '''
print("Enter quantity of pens:")
local pens = tonumber(io.read())
print("Enter quantity of copies:")
local copies = tonumber(io.read())
print("Enter quantity of pencils:")
local pencils = tonumber(io.read())

print("Enter rate of pen:")
local penRate = tonumber(io.read())
print("Enter rate of copy:")
local copyRate = tonumber(io.read())
print("Enter rate of pencil:")
local pencilRate = tonumber(io.read())

local totalAmount = (pens * penRate) + (copies * copyRate) + (pencils * pencilRate)
print("Total amount:", totalAmount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
''' This Lua code takes input for the quantities and rates of pens, copies, and pencils. It then calculates the total amount based on the provided rates and quantities, using the formula `totalAmount = (pens * penRate) + (copies * copyRate) + (pencils * pencilRate)`. Finally, it displays the computed total amount. This code demonstrates a practical approach to calculate the total cost of multiple items based on their quantities and rates in Lua.
   ''',
"e": "Step 1: Start\n"
"Step 2: Input Quantity and Rate Pen, Copy and Pencil. (QP, RP, QC, RC, QPC, RPC)\n"
"Step 3: TA = ( QP * RP ) + ( QC * RC ) + ( QPC * RPC )\n"
"Step 5: Print “ Total Amount = “ TA\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/45-min.png"
},
{
"no": 46,
"q": "Write a program to convert decimal number to octal number",
"a": '''
   print("Enter a decimal number:")
local decimalNumber = tonumber(io.read())
local octalNumber = string.format("%o", decimalNumber)
print("Octal number:", octalNumber)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a decimal number and then converts it into its octal equivalent. The code uses the `string.format` function to convert the decimal number to its octal representation using the "%o" format specifier. The resulting octal number is then displayed. This code snippet effectively demonstrates how to convert a decimal number to octal representation in Lua using built-in functions.
'''  ,
"e": "Step 1: Start\n"
"Step 2: input Decimal Number(D)\n"
"Step 3: While D < > 0\n"
"  If True GoTo Step 4\n"
"  Else GoTo Step 7\n"
"Step 4:  R = D MOD 8\n"
"Step 5: S = str(R) + S\n"
"Step 6: D / 8\n"
"  GoTo Step 3\n"
"Step 7: Print “Octal Equivalent Number is” S\n"
"Step 8: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/46-min.png"
},
{
"no": 47,
"q":
"Write a program to ask number and find sum of cube of odd digits",
"a": '''
   print("Enter a number:")
local number = tonumber(io.read())

local sum = 0
while number > 0 do
   local digit = number % 10
   if digit % 2 == 1 then
       sum = sum + (digit * digit * digit)
   end
   number = math.floor(number / 10)
end

print("Sum of cube of odd digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number and then calculates the sum of the cubes of its odd digits. The code enters a loop that iterates through each digit of the input number by taking its remainder when divided by 10 (using the modulo operation). If the digit is odd, its cube is added to the running sum. After processing all the digits, the code updates the input number by removing its last digit (using integer division). This loop continues until there are no more digits left in the number. Finally, the code displays the sum of the cubes of the odd digits. This concise code segment effectively demonstrates how to calculate the sum of cubes of odd digits in a given number using a loop in Lua.
''' ,
"e": "Step 1: Start\n"
"Step 2: Input Any Number. ( N )\n"
"Step 3: S = 0\n"
"Step 4: While N<>0\n"
"   If True GoTo Step 5\n"
"   Else GoTo Step 9\n"
"Step 5: R = N MOD 10 \n"
"Step 6: If R MOD 2 = 1\n"
"   If True GoTo Step 7\n"
"   Else GoTo Step 8 \n"
"Step 7: S = S + R ^ 3\n"
"Step 8: N = N \ 10\n"
"  GoTo Step 4\n"
"Step 9: Print “ Sum Of Cube Of Odd Digits “ S\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/47-min.png"
},
{
"no": 48,
"q": "Write a program to print 1   10   101   1010   10101",
"a": '''
    function printPattern(n)
   for i = 1, n do
       for j = 1, i do
           if j % 2 == 1 then
               io.write("1")
           else
               io.write("0")
           end
       end
       print()
   end
end

local rows = 5  -- Replace with the number of rows
printPattern(rows)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function called `printPattern` that generates a pattern of alternating 1s and 0s based on the number of rows specified by the variable 'n'. It uses two nested loops to create the pattern: the outer loop controls the number of rows, and the inner loop generates the elements in each row. If the inner loop index 'j' is odd, it prints "1"; otherwise, it prints "0". After printing each row, a new line is added to start the next row. The code then sets the 'rows' variable to 5 and calls the `printPattern` function to display the pattern with 5 rows. This code snippet demonstrates a simple way to generate and display a pattern of alternating digits in Lua.
''' ,
"e": "Step 1: Start\n"
"Step 2: For i = 1; i<=5; i  =i + 1\n"
"    For j = 1 ; i<=1; j = j +1\n"
"  If true GoTo Step 3\n"
"  Else GoTo Step 4\n"
"Step 3: Print j MOD 2\n"
"   GoTo Step 4\n"
"Step 4: Stop/End\n",
"category": "series",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/48-min.png"
},
{
"no": 49,
"q":
"Write a program to find the sum of all natural numbers from 1 to 100",
"a": '''
   function printPattern(n)
   for i = 1, n do
       for j = 1, i do
           if j % 2 == 1 then
               io.write("1")
           else
               io.write("0")
           end
       end
       print()
   end
end

local rows = 5  -- Replace with the number of rows
printPattern(rows)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code defines a function called `printPattern` that generates a pattern of alternating 1s and 0s based on the number of rows specified by the variable 'n'. It uses nested loops to create the pattern, with the outer loop controlling the number of rows and the inner loop generating the elements in each row. If 'j' (the position in the row) is odd, it prints "1", otherwise "0". After each row, a new line is printed to start the next row. The code then sets the 'rows' variable to 5 and calls the function to print the pattern with 5 rows. This code snippet showcases a concise approach to generating and displaying a pattern in Lua.
''' ,
"e": "Step 1: Start\n"
"Step 2: For I = 1 To 100\n"
"  If True GoTo Step 3\n"
"  Else GoTo Step 4\n"
"Step 3: S = S + I\n"
"  GoTo Step 2\n"
"Step 4: Print “ Sum of All Natural Number from 1 to 100 “ S\n"
"Step 5: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/49-min.png"
},
{
"no": 50,
"q":
"Write a program to generate the following series 1  121  12321  1234321  123454321",
"a": '''
    local num = 1

for i = 1, 5 do
   local str = ""
   for j = 1, i do
       str = str .. tostring(num)
       num = num + 1
   end
   print(str)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code initializes the variable "num" as 1. It then enters an outer loop that iterates five times. Within each iteration, an inner loop constructs an empty string "str" and appends the value of "num" as a string to it, incrementing "num" afterwards. This process generates a sequence of increasing numbers for each iteration of the outer loop.

The constructed "str" is then printed in each iteration of the outer loop.
'''  ,
"e": "Step 1: Start\n"
"Step 2: A = 1\n"
"Step 3: for i = 1; i <= 5; i = i + 1\n"
"   If True GoTo Step 4\n"
"   Else GoTo Step 6\n"
"Step 4: Print A ^ 2\n"
"Step 5: A = A * 10 + 1\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/50-min.png",
"category": "series"
},
{
"no": 51,
"q":
"Write a program to print sum of cube of any two ask numbers",
"a": '''
     print("Enter first number:")
local num1 = tonumber(io.read())
print("Enter second number:")
local num2 = tonumber(io.read())

local sumOfCubes = (num1 * num1 * num1) + (num2 * num2 * num2)
print("Sum of cubes of the two numbers:", sumOfCubes)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input two numbers, 'num1' and 'num2'. It then calculates the sum of the cubes of these two numbers and assigns the result to the 'sumOfCubes' variable. The formula used is (num1 * num1 * num1) + (num2 * num2 * num2) . Finally, the code displays the computed sum of the cubes of the input numbers.
''',
"e": "Step 1: Start \n"
"Step 2: Input Any tow Number. (A, B)\n"
"Step 3: C = A ^ 3 + B ^ 3\n"
"Step 4: Print “Sum of CUbe Of Two Numbers” C\n"
"Step 5: Stop\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/51-min.png"
},
{
"no": 52,
"q":
"Write a program to generate the series .1  0.01  0.001  0.0001  0.00001",
"a": '''
local num = 0.1
for i = 1, 5 do
   print(num)
   num = num / 10
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code initializes a variable `num` with the value 0.1. It then enters a loop that iterates five times. During each iteration, it prints the current value of `num` and then updates `num` by dividing it by 10. This generates a series of numbers where each term is obtained by dividing the previous term by 10.
''' ,
"e": "Step 1: Start\n"
"Step 2: a = 1\n"
"Step 3: For i = 1; i <= 5; i++\n"
"If True Step 4\n"
"If False GoTo Step 5\n"
"Step 4: Print  (a / 10 * i),\n"
"  i = i+1\n"
"GoTo Step 3\n"
"Step 5 : Stop/End",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/52-min.png",
"category": "series"
},
{
"no": 53,
"q": "Write a program to print 50  75  100  125  150",
"a": '''
function printSeries(start, step, count)
   local num = start
   for i = 1, count do
       print(num)
       num = num + step
   end
end

printSeries(50, 25, 5)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function `printSeries()` that takes three arguments: `start` (starting number), `step` (increment value), and `count` (number of terms to print). Inside the function, a variable `num` is initialized with the value of `start`. The code then enters a loop that iterates `count` times. During each iteration, it prints the current value of `num` and then updates `num` by adding the `step` value. This generates a series of numbers where each term is obtained by adding the `step` value to the previous term.
''',
"e": "Step 1:  Start\n"
"Step 2: For I = 50; I<=150; I = I + 25\n"
"   If True GoTo Step 3\n"
"   Else GoTo Step 6\n"
"Step 3: Print I\n"
"   GoTo Step 2\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/53-min.png",
"category": "series"
},
{
"no": 54,
"q":
"Write a program to ask string and print the ask string in alternate character",
"a": '''
    print("Enter a string:")
local input = io.read()

for i = 1, #input, 2 do
   io.write(input:sub(i, i))
end
print()
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input a string. It then utilizes a loop that iterates over the characters of the input string with a step of 2 (i.e., it only considers alternate characters). During each iteration, it uses the `:sub()` method to extract the character at the current index 'i' and prints it using `io.write()`. This results in printing only the alternate characters of the input string.
'''  ,
"e": "Step 1: Start \n"
"Step 2: Input a word. (s)\n"
"Step 3: For i =1 ; i<=len(s), i++\n"
"If True GoTo Step4\n"
"Else GoTo Step 5\n"
"Step 4: b= mid\$(s,i,1)\n"
"  IF i mod 2 =1 Then w = w+lcase(b)\n"
"Else w = w + ucase(b)\n"
"GoTo Step 3\n"
"Step 5: Print w\n"
"Step 6: Stop/End\n",
"f": "https://allbachelor.com/wp-content/uploads/2022/10/54-min.png"
},
{
"no": 55,
"q": "Write a program to print cube of all numbers from 1 to 50",
"a": '''
for i = 1, 50 do
   local cube = i * i * i
   print("Cube of", i, ":", cube)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a series of cubes for numbers ranging from 1 to 50. It uses a loop that iterates through the numbers 1 to 50. During each iteration, it calculates the cube of the current number 'i' by raising it to the power of 3, and then prints the cube along with its corresponding index 'i'.
'''  ,
"e": "Step 1: Start\n"
"Step 2: For i = 1; i<=50;i++\n"
"If True GoTo Step 3\n"
"Else GoTo Step\n"
"Step 3: Print i ^ 3\n"
"GoTo Step 2\n"
"Step 4: Stop/End\n"
},
{
"no": 56,
"q":
"Write a program to ask three sides of a triangle and determine whether a triangle is equilateral triangle or isoceles",
"a": '''
    print("Enter three sides of a triangle:")
local side1 = tonumber(io.read())
local side2 = tonumber(io.read())
local side3 = tonumber(io.read())

if side1 == side2 and side2 == side3 then
   print("Equilateral triangle")
elseif side1 == side2 or side2 == side3 or side3 == side1 then
   print("Isosceles triangle")
else
   print("Scalene triangle")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input the lengths of three sides of a triangle. It then checks the conditions to determine the type of triangle based on the side lengths. If all three sides are equal, it indicates an "Equilateral triangle." If at least two sides are equal, it identifies an "Isosceles triangle." If all sides have different lengths, it classifies the triangle as a "Scalene triangle." The code utilizes conditional statements to make these determinations and prints the corresponding triangle type based on the input side lengths.

'''   ,
"e": "Step 1: Start\n"
"Step 2: Input Three Sides of Triangle. (A, B, C)\n"
"Step 3: If A = B AND B = C\n"
" If True GoTo Step 4\n"
" Else GoTo Step 5\n"
"Step 4: Print “It is a Equilateral Triangle” \n"
"   GoTo Step 6\n"
"Step 5: Print “ It is not a Equilateral Triangle”\n"
"Step 4: Stop/End\n"
},
{
"no": 57,
"q":
"Write a program to enter any 20 numbers and display the greatest and smallest one using array",
"a": '''
    local numbers = {}
for i = 1, 20 do
   numbers[i] = tonumber(io.read())
end

table.sort(numbers)
print("Smallest:", numbers[1])
print("Greatest:", numbers[20])
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code initializes an empty table named `numbers`. It then enters a loop that iterates 20 times. During each iteration, it prompts the user to input a number and stores it in the `numbers` table at the current index. After inputting all 20 numbers, the code sorts the `numbers` table in ascending order using the `table.sort()` function. Finally, it prints the smallest number (located at index 1) and the greatest number (located at index 20) from the sorted table.

For example, if the user inputs the numbers 7, 2, 9, 4, 1, 12, 8, 5, 6, 10, 15, 3, 18, 14, 11, 16, 19, 17, 20, 13, the output will be:

Smallest: 1
Greatest: 20
''' ,
"e": "Step 1: Start\n"
"Step 2: N[20]\n"
"Step 3: For I = 1; I <=20; I++\n"
"  If True GoTo Step 4\n"
"  Else GoTo Step 5\n"
"Step 4: Input Numbers. N[I]\n"
"   GoTo Step 3\n"
"Step 5: G = N[1]\n"
"Step 6: For I =2; I<=20; I++\n"
"  If True GoTo Step 7\n"
"  Else GoTo Step 8\n"
"Step 7: If N[I] > G \n"
"   If True GoTo Step \n"
"Step 8: G = N[I]\n"
"   GoTo Step 6\n"
"Step 9: Print “The Greatest Number is” G\n"
"Step 10: Stop/End\n"
},
{
"no": 58,
"q":
"Write a program to generate the following series 1  4  9…………9th term",
"a": '''
     for i = 1, 9 do
   local term = i * i
   print("Term", i, ":", term)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a series of terms where each term is the square of the current value of 'i'. The loop iterates from 1 to 9, inclusive. In each iteration, it calculates the square of 'i' and then prints the term along with its corresponding index 'i'.
'''  ,
"e": "Step 1: Start\n"
"Step 2: For i = 1; i<=9; i++\n"
"If True GoTo Step 3\n"
"Else GoTo Step4\n"
"Step 3: Print i ^ 2\n"
"GoTo Step 2\n"
"Step 4: Stop/End\n",
"category": "series"
},
{
"no": 59,
"q":
"Write a program to print all Armstrong numbers from 1 to 500 ",
"a": '''
    function isArmstrong(num)
   local sum = 0
   local temp = num
   local digits = math.floor(math.log10(num)) + 1

   while temp > 0 do
       local digit = temp % 10
       sum = sum + digit ^ digits
       temp = math.floor(temp / 10)
   end

   return sum == num
end

for i = 1, 500 do
   if isArmstrong(i) then
       print(i)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function `isArmstrong(num)` that checks whether a given number is an Armstrong number or not. It iterates through each number from 1 to 500 using a loop and calls the `isArmstrong` function for each number. An Armstrong number is a number that is equal to the sum of its own digits raised to the power of the number of digits it has. The code calculates the sum of digits raised to the power of the number of digits using a loop, and if the calculated sum is equal to the original number, it prints the number as an Armstrong number.

For example, the output of the code will display the Armstrong numbers between 1 and 500, which include: 1, 2, 3, 4, 5, 6, 7, 8, 9, 153, 370, and 371.
''',
"e": "Step 1: Start\n"
"Step 2: Input Any Number. (N)\n"
"Step 3: A =N\n"
"   S = 0\n"
"Step 4: While N<> 0\n"
" If True GoTo Step 5\n"
" Else GoTo Step 8\n"
"Step 5: R = N MOD 10\n"
"Step 6: S = S + R ^ 3\n"
"Step 7: N = N \ 10\n"
"   GoTo Step 4\n"
"Step 8: If A =S GoTo Step 9\n"
"   Else GoTo Step 10\n"
"Step 9: Print A “Is Armstrong” \n"
"Step 10: Print A “Is Not Armstrong” \n"
"Step 11: Stop/End\n"
},
{
"no": 60,
"q":
"Write a program to ask number and count total number of even digits",
"a": '''
    print("Enter a number:")
local number = tonumber(io.read())

local count = 0
while number > 0 do
   local digit = number % 10
   if digit % 2 == 0 then
       count = count + 1
   end
   number = math.floor(number / 10)
end

print("Total even digits:", count)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input a number. It then enters a loop that iterates while the number is greater than 0. Within each iteration, the code calculates the last digit of the number using the modulo operator (%). If the digit is even (divisible by 2), it increments the 'count' variable. The code then updates the number by removing the last digit (using integer division). After processing all digits, it prints the total count of even digits found in the input number.
''',
"e": "Step 1: Start\n"
"Step 2: Input Any Number. (N)\n"
"Step 3: C = 0\n"
"Step 4: While N<>0\n"
"  If True GoTo Step 5\n"
"  Else GoTo Step 9\n"
"Step 5: R = N MOD 10\n"
"Step 6: If R MOD 2 = 0 GoTo Step 7  \n"
"  Else GoTo Step 8 \n"
"Step 7: C = C +1\n"
"Step 8: N = N \ 10\n"
"  GoTo Step 4\n"
"Step 9: Print “Total Number of Even Digits” C\n"
"Step 10: Stop/End\n"
},
{
"no": 61,
"q":
"Write a program to generate the following series 5  55  555  5555  55555",
"a": '''
local term = 5
for i = 1, 5 do
   print("Term", i, ":", term)
   term = term * 10 + 5
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a series of numbers where each term is formed by concatenating additional '5' digits to the previous term. The loop iterates five times, starting with the initial term '5'. In each iteration, it prints the current term, which is then updated by multiplying it by 10 and adding 5. This creates a pattern of increasing numbers with '5' digits, such as 5, 55, 555, and so on.
''' ,
"e": "Step 1: Start\n"
"Step 2: A = 5\n"
"Step 3: For i=1;i<=5;i=i++\n"
"If True GoTo Step 4\n"
"Else GoTo Step 6\n"
"Step 4: Print A\n"
"Step 5: A = A * 10 +5\n"
"  GoTo Step 3\n"
"Step 6: Stop/End\n",
"f": " ",
"category": "series"
},
{
"no": 62,
"q":
"Write a program to find the sum of all odd numbers from 1 to 100",
"a": '''
   local sum = 0
for i = 1, 100, 2 do
   sum = sum + i
end
print("Sum of odd numbers from 1 to 100:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of all odd numbers from 1 to 100. It initializes a variable `sum` to store the cumulative sum and then uses a loop to iterate through odd numbers from 1 to 100 (incrementing by 2 in each step). Inside the loop, it adds the current odd number to the `sum`. Finally, it prints out the total sum of all odd numbers from 1 to 100.
''',
"e": "Step 1: Start \n"
"Step 2: For i = 1 ; i < = 100 ; i = i + 2 \n"
"If True GoTo Step 3 \n"
"Else GoTo Step 4\n"
"Step 3: S = S + i\n"
"   GoTo Step 2\n"
"Step 4: Print “Sum of Odd number is” S\n"
"Step 5: Stop/End\n"
},
{
"no": 63,
"q":
"Write a program to generate the series 2  22  222………13th term",
"a": '''
local term = 2
for i = 1, 13 do
   print("Term", i, ":", term)
   term = term * 10 + 2
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of terms in which each term is obtained by concatenating the digit `2` at the end of the previous term. It starts with an initial term value of `2` and then repeatedly multiplies the current term by `10` and adds `2` to it. The loop runs for 13 iterations, printing each term along with its term number. The output will show the series generated by appending `2` to the previous term: `2, 22, 222, ...`.
''' ,
"e": "Step 1: Start\n"
"Step 2: A = 2\n"
"Step 3: For i =  1; i<=13; i = i + 1\n"
"  If True GoTo Step 4\n"
"  Else GoTo Step 6\n"
"Step 4: Print A\n"
"Step 5: A = A *10 + 2\n"
"  GoTo Step 3\n"
"Step 6: Stop/End\n",
"category": "series"
},
{
"no": 64,
"q":
"Write a program to print all natural numbers from 1 to 100 in descending order",
"a": '''
for i = 100, 1, -1 do
   print(i)
end
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of numbers starting from 100 and decreasing by 1 until it reaches 1. It uses a `for` loop with the initial value `100`, the ending value `1`, and a negative step `-1`. Inside the loop, it prints each value of `i`, which results in printing numbers from 100 down to 1 in descending order.
''',
"e": "Step 1: Start\n"
"Step 2: For i = 100; i <= 1; i = i - 1\n"
"  If True GoTo Step 3\n"
"  Else GoTo Step 4\n"
"Step 3: Print I\n"
"  GoTo Step 2\n"
"Step 4: Stop/End\n"
},
{
"no": 65,
"q":
"Write a program to enter any ten strings and sort in ascending order",
"a": '''
    local strings = {}
for i = 1, 10 do
   strings[i] = io.read()
end

table.sort(strings)
print("Sorted strings:")
for i = 1, 10 do
   print(strings[i])
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code allows the user to enter ten strings and then sorts and prints them in ascending order. It uses a loop to read ten strings from the user and stores them in the `strings` table. After all strings are entered, it sorts the `strings` table using `table.sort()`. Finally, it prints the sorted strings one by one in ascending order using another loop.
   ''',
"e": "Step 1: Start\n"
"Step 2: N[10]\n"
"Step 3: For I = 1; I<=10; I++\n"
" If True GoTo Step 4 \n"
" Else GoTo Step 5\n"
"Step 4: Input The Strings. N[I]\n"
"   GoTo Step 3\n"
"Step 5: For I = 1; I<=10; I = I + 1\n"
"   If True GoTo Step 6\n"
"   Else GoTo Step 9\n"
"Step 6: For J = 1; J<=10; J = J - 1\n"
"   If True GoTo Step 7\n"
"   Else GoTo Step 5\n"
"Step 7: If N[J] > N[J+1] GoTo Step 8\n"
"   Else GoTo Step 6\n"
"Step 8: Swap N[J], N[J+1]\n"
"   GoTo Step 6\n"
"Step 9: Print “String Arranged in Ascending Order”\n"
"Step 10: For I=1; I<=10; I=I+1\n"
"    If True GoTo Step 11\n"
"    Else GoTo Step 12\n"
"Step 11: Print N[I]\n"
"    GoTo Step 10\n"
"Step 12: Stop/End\n"
},
{
"no": 66,
"q":
"Write a program to print sum of square of any two ask numbers",
"a": '''
   print("Enter first number:")
local num1 = tonumber(io.read())
print("Enter second number:")
local num2 = tonumber(io.read())

local sumOfSquares = num1 * num1 + num2 * num2
print("Sum of squares of the two numbers:", sumOfSquares)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to enter two numbers and calculates the sum of the squares of these two numbers. It first reads the values of `num1` and `num2` using `io.read()`. Then, it computes the sum of their squares using the formula `num1 * num1 + num2 * num2`. Finally, it prints the calculated sum of squares.
''',
"e": "Step 1: Start \n"
"Step 2: Input Two Numbers.(A, B)\n"
"Step 3: S = A ^ 2 + B ^ 2\n"
"Step 4: Print “Sum of Square of Two Numbers” S\n"
"Step 5: Stop/End\n"
},
{
"no": 67,
"q":
"Write a program to print all even numbers from 2 to 100 also print its sum",
"a": '''
   local sum = 0
for i = 2, 100, 2 do
   sum = sum + i
   print(i)
end
print("Sum of even numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of all even numbers from 2 to 100. It uses a `for` loop with a step of 2 to iterate through even numbers within the given range. For each even number, it adds the current number to the running total `sum`. Inside the loop, the code also prints each even number. After the loop finishes, it prints the calculated sum of all the even numbers in the given range.
''',
"e": "Step 1: Start\n"
"Step 2: For I = 2; I<=100; I=I+2\n"
"   If True GoTo Step 3\n"
"   Else GoTo Step 5\n"
"Step 3: Print I\n"
"Step 4: S = S + 1\n"
"   GoTo Step 2\n"
"Step 5: Print “Sum of All Even Numbers From 1 to 100 =” S\n"
"Step 6: Stop/End\n"
},
{
"no": 68,
"q":
"Write a program to ask number and find sum of cube of digits",
"a": '''
print("Enter a number:")
local number = tonumber(io.read())

local sum = 0
while number > 0 do
   local digit = number % 10
   sum = sum + (digit * digit * digit)
   number = math.floor(number / 10)
end

print("Sum of cube of digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
''' This code calculates the sum of the cubes of the digits in a given number. It begins by prompting the user to input a number and converts the input to a number using `tonumber(io.read())`. The code then employs a `while` loop to extract each digit from the number by calculating the remainder of the number when divided by 10 (`digit = number % 10`). The cube of the extracted digit is then added to the running total `sum`. Following this, the number is divided by 10 and rounded down using `math.floor(number / 10)` to eliminate the last digit. The loop continues until the number becomes 0. Finally, the code prints the calculated sum of the cubes of the digits.
''',
"e": "Step 1: Start \n"
"Step 2: Input Any Number. (N)\n"
"Step 3: S = 0\n"
"Step 4: While N<>0\n"
" If True GoTo Step 5\n"
" Else GoTo Step 8\n"
"Step 5: R = N MOD 10 \n"
"Step 6: S = S + R ^ 3\n"
"Step 7: N = N \ 10\n"
" GoTo Step 4\n"
"Step 8: Print “Sum of Cube Of Digits” S\n"
"Step 9: Stop/End\n"
},
{
"no": 69,
"q": "Write a program to ask number and find sum of odd digits",
"a": '''
print("Enter a number:")
local number = tonumber(io.read())

local sum = 0
while number > 0 do
   local digit = number % 10
   if digit % 2 == 1 then
       sum = sum + digit
   end
   number = math.floor(number / 10)
end

print("Sum of odd digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of the odd digits in a given number. It starts by prompting the user to enter a number and converts the input to a number using `tonumber(io.read())`. It then uses a `while` loop to extract each digit from the number by taking the remainder of the number when divided by 10 (`digit = number % 10`). If the extracted digit is odd (`digit % 2 == 1`), it adds the digit to the running total `sum`. After processing each digit, the number is divided by 10 and rounded down using `math.floor(number / 10)` to remove the last digit. The loop continues until the number becomes 0. Finally, the code prints the calculated sum of odd digits.
''',
"e": "Step 1: Start \n"
"Step 2: Input Any Number. (N)\n"
"Step 3: S = 0\n"
"Step 4: While N<>0\n"
"  If True GoTo Step 5\n"
"  Else GoTo Step 9\n"
"Step 5: R = N MOD 10\n"
"Step 6: If R MOD 2 = 2 GoTo Step 7\n"
"   Else GoTo Step 8\n"
"Step 7: S = S + R\n"
"Step 8: N = N \ 10\n"
"  GoTo Step 4\n"
"Step 9: Print “Sum of Odd Digits” S\n"
"Step 10: Stop/End\n"
},
{
"no": 70,
"q":
"Write a program to enter any 10 numbers and find the sum of numbers",
"a": '''
local sum = 0
for i = 1, 10 do
   local num = tonumber(io.read())
   sum = sum + num
end
print("Sum of 10 numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of 10 numbers entered by the user. It initializes a variable `sum` to 0 to store the running total. Then, it uses a for loop to iterate 10 times. In each iteration, it prompts the user to enter a number using `io.read()` and converts the input to a number using `tonumber()`. The entered number is added to the `sum`. After the loop completes, the code prints the calculated sum of the 10 entered numbers. This code effectively accumulates the input numbers to find their sum.
''',
"e": "Step 1: Start\n"
"Step 2: For I = 1; I<=10; I=I+1\n"
"   If True GoTo Step 3\n"
"   Else GoTo Step 4\n"
"Step 3: Input Numbers. N[I]\n"
"Step 4: S = S + N[I]\n"
"   GoTo Step 2\n"
"Step 5: Print “ Sum of 10 Numbers” S\n"
"Step 6: Stop/End\n"
},
{
"no": 71,
"q":
"Write a program TO ENTER ANY DIGIT AND PRINT CUBE OF ODD DIGITS",
"a": '''
    print("Enter a number:")
local number = tonumber(io.read())

local sum = 0
while number > 0 do
   local digit = number % 10
   if digit % 2 == 1 then
       sum = sum + (digit * digit * digit)
   end
   number = math.floor(number / 10)
end

print("Sum of cube of odd digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of the cubes of odd digits in a given number. It prompts the user to enter a number. It then iterates through the digits of the number using a while loop. For each digit, it checks if it's odd (i.e., its remainder when divided by 2 is 1). If the digit is odd, it calculates the cube of the digit and adds it to the running sum. The number is updated by removing the last digit using integer division. Finally, it prints the calculated sum of the cubes of odd digits. This code effectively extracts odd digits from the input number, cubes them, and accumulates their sum.
''',
"e": " ",
"f": " "
},
{
"no": 72,
"q":
"Write a program to enter any ten strings and print the longest strings",
"a": '''
    -- Initialize an empty table to store the strings
local strings = {}

-- Input loop to get 10 strings
for i = 1, 10 do
   io.write("Enter string ", i, ": ")
   local input = io.read()
   table.insert(strings, input)
end

-- Find the longest string
local longest = strings[1]
for i = 2, 10 do
   if #strings[i] > #longest then
       longest = strings[i]
   end
end

-- Print the longest string
print("Longest string:", longest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code segment initializes an empty table named "strings" to store strings. It then enters a loop that iterates 10 times, prompting the user to input strings during each iteration and adding them to the "strings" table using `table.insert`.

After collecting the strings, the code proceeds to find the longest string by comparing their lengths. It initializes the variable "longest" with the first string from the table and then iterates through the remaining strings, updating "longest" whenever a longer string is encountered.

Finally, the code prints the longest string among the inputs, preceded by the message "Longest string:". This succinct code effectively collects user inputs, identifies the longest string, and presents it to the user.
   ''',
"e": ""
},
{
"no": 73,
"q":
"Write a program to generate the series 0.00003  0.0003  0.003  0.03  0.3",
"a": '''
   local num = 0.00003

for i = 1, 5 do
   print(num)
   num = num * 10
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code initializes the variable "num" with the value 0.00003. It then enters a loop that iterates five times. During each iteration, the code prints the current value of "num," and subsequently multiplies "num" by 10. This multiplication increases "num" by a factor of 10 with each iteration. As a result, the program prints a series of numbers: 0.00003, 0.0003, 0.003, 0.03, and 0.3. This concise code effectively generates and displays the specified sequence of numbers by multiplying the initial value by powers of 10.
''',
"e": "",
"category": "series"
},
{
"no": 74,
"q":
"Write a program to ask any number and print the prime factorial of a given number",
"a": '''
-- Function to check if a number is prime
local function isPrime(n)
   if n <= 1 then
       return false
   end
   for i = 2, math.sqrt(n) do
       if n % i == 0 then
           return false
       end
   end
   return true
end

-- Function to calculate prime factorial
local function primeFactorial(n)
   local result = 1
   for i = 2, n do
       if isPrime(i) then
           result = result * i
       end
   end
   return result
end

-- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Calculate and print prime factorial
print("Prime factorial of", number, "is", primeFactorial(number))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code defines two functions. The first function, `isPrime`, checks if a given number is prime by first excluding numbers less than or equal to 1 and then iterates through numbers up to the square root of the given number, checking for divisibility. The second function, `primeFactorial`, calculates the prime factorial of a given number by multiplying all prime numbers from 2 up to the input number.

After receiving input from the user, the code calls the `primeFactorial` function with the input number, computes the prime factorial, and then prints the result. This concise code effectively evaluates the prime factorial of the provided number, offering a clear result to the user.
''',
"e": ""
},
{
"no": 75,
"q":
"Write a program to enter any 10 numbers and display the smallest one.",
"a": '''
   -- Initialize the smallest variable with a large value
local smallest = math.huge

-- Input loop to get 10 numbers
for i = 1, 10 do
   io.write("Enter number ", i, ": ")
   local number = tonumber(io.read())
   if number < smallest then
       smallest = number
   end
end

-- Print the smallest number
print("Smallest number:", smallest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code initializes the variable "smallest" with a value of positive infinity using `math.huge`. It then proceeds to gather input for 10 numbers through a loop, prompting the user for each input and storing it in the variable "number." During each iteration, the code checks if the current "number" is smaller than the stored "smallest." If it is, the "smallest" value is updated to match the current "number." After completing the loop, the code prints the smallest value obtained from the inputs, providing the user with the result. This succinct code effectively identifies and displays the smallest number among the 10 input numbers.
''',
"e": " "
},
{
"no": 76,
"q":
"Write a program to ask any number and check whether the given number is palindrome or not",
"a": '''
-- Function to check if a number is palindrome
local function isPalindrome(n)
   local str = tostring(n)
   local len = #str
   for i = 1, len // 2 do
       if str:sub(i, i) ~= str:sub(len - i + 1, len - i + 1) then
           return false
       end
   end
   return true
end

-- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Check and print if the number is palindrome or not
if isPalindrome(number) then
   print(number, "is a palindrome.")
else
   print(number, "is not a palindrome.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code presents a function named `isPalindrome` that determines whether a given number is a palindrome. The function converts the number to a string, then compares characters from the outermost positions towards the center of the string to check for symmetry.

After prompting the user for input, the code reads a number. It then employs the `isPalindrome` function, and based on the result, it prints either "is a palindrome" or "is not a palindrome." This succinct code effectively identifies whether the entered number reads the same forwards and backwards, giving appropriate output accordingly.
''',
"e": ""
},
{
"no": 77,
"q":
"Write a program to ask three sides of a triangle and determine whether a triangle can be formed or not",
"a": '''
   -- Function to check if a triangle can be formed
local function canFormTriangle(a, b, c)
   return a + b > c and b + c > a and c + a > b
end

-- Input
io.write("Enter the three sides of the triangle:\n")
local side1 = tonumber(io.read())
local side2 = tonumber(io.read())
local side3 = tonumber(io.read())

-- Check and print if a triangle can be formed
if canFormTriangle(side1, side2, side3) then
   print("A triangle can be formed with the given sides.")
else
   print("A triangle cannot be formed with the given sides.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function named `canFormTriangle` that checks if a triangle can be formed with the given side lengths. It evaluates whether the sum of any two sides is greater than the length of the third side, which is a fundamental condition for triangle viability.

The user is prompted to input three side lengths, which are stored in variables. The code then employs the `canFormTriangle` function using these side lengths. Depending on the result of the evaluation, the code either prints "A triangle can be formed with the given sides." or "A triangle cannot be formed with the given sides." This concise code effectively validates whether a valid triangle can be created with the specified side lengths and provides corresponding feedback.
''',
"e": " "
},
{
"no": 78,
"q":
"Write a program to ask three sides of a triangle and determine whether a triangle is equilateral isosceles or scalene triangle or not",
"a": '''
    -- Function to classify triangle type
local function classifyTriangle(a, b, c)
   if a == b and b == c then
       return "Equilateral"
   elseif a == b or b == c or c == a then
       return "Isosceles"
   else
       return "Scalene"
   end
end

-- Input
io.write("Enter the three sides of the triangle:\n")
local side1 = tonumber(io.read())
local side2 = tonumber(io.read())
local side3 = tonumber(io.read())

-- Classify and print the type of triangle
local triangleType = classifyTriangle(side1, side2, side3)
print("The triangle is:", triangleType, "triangle")
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function, `classifyTriangle`, to identify a triangle's type based on side lengths. It distinguishes "Equilateral" when all sides match, "Isosceles" if two sides are equal, else "Scalene." User inputs three side lengths and the code utilizes the function to determine the triangle type, then displays the result. For instance, if sides are 5, 5, and 5, it outputs "Equilateral triangle." For sides 5, 5, and 8, it outputs "Isosceles triangle." And for sides 3, 4, and 5, it outputs "Scalene triangle."
''',
"e": " "
},
{
"no": 79,
"q": "Write a program to generate the series 10  20  30………100",
"a": '''
     for i = 10, 100, 10 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code snippet generates a series of numbers in increments of 10, starting from 10 and ending at 100 (inclusive). It uses a loop with the form `for i = start, stop, step` to iterate through the range. In this case, `i` starts at 10, increments by 10 in each iteration, and stops when it reaches 100. The code then prints each value of `i` in the loop, resulting in the following output:
''',
"e": " ",
"category": "series"
},
{
"no": 80,
"q":
"Write a program to input any number and display whether it is odd or even.",
"a": '''
-- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Check and print if the number is odd or even
if number % 2 == 0 then
   print(number, "is an even number.")
else
   print(number, "is an odd number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''In this Lua code, the program prompts the user to input a number. After taking the input, it uses the modulo operator (%) to check if the input number is even or odd. If the remainder of the division of the input number by 2 is 0, it means the number is even, and the program prints a message confirming that. If the remainder is not 0, indicating an odd number, the program prints a message indicating that the number is odd. This code effectively distinguishes between even and odd numbers based on their divisibility by 2.
''',
"e": ""
},
{
"no": 81,
"q":
"Write a program to input any number and check whether the given no. is divisible by 5 or not.",
"a": '''
   -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Check and print if the number is divisible by 5 or not
if number % 5 == 0 then
   print(number, "is divisible by 5.")
else
   print(number, "is not divisible by 5.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code takes user input for a number and checks whether it is divisible by 5 or not. It does so by using the modulo operator (%) to determine if the remainder of the division of the input number by 5 is equal to 0. If the remainder is 0, the program prints that the number is divisible by 5. Otherwise, it prints that the number is not divisible by 5. This simple logic helps identify whether the given number is a multiple of 5 or not.
''',
"e": " ",
"f": " "
},
{
"no": 82,
"q":
"Write a program to enter any 15 numbers and print only those numbers which are divisible by 5",
"a": '''
-- Input loop to get 15 numbers
local numbers = {}
for i = 1, 15 do
   io.write("Enter number ", i, ": ")
   local num = tonumber(io.read())
   table.insert(numbers, num)
end

-- Print numbers divisible by 5
print("Numbers divisible by 5:")
for _, num in ipairs(numbers) do
   if num % 5 == 0 then
       print(num)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code captures user input through a loop that runs 15 times. In each iteration, the user is prompted to input a number, which is then stored in the "numbers" table using the `table.insert` function.

Following this, the program employs another loop to traverse the "numbers" table and verify whether each number is divisible by 5 by using the modulo operator (%). If a number is indeed divisible by 5, it is printed.

Consequently, the code displays the message "Numbers divisible by 5:" followed by the list of numbers that meet the divisible criteria. This compact code effectively obtains input from the user and prints the numbers from the input list that are divisible by 5.
''',
"e": ""
},
{
"no": 83,
"q":
"Write a program to generate the following series 9  28  14  7  22  11…………10th term",
"a": '''
    local term = 9
local series = {term}

for i = 2, 10 do
   if i % 2 == 0 then
       term = term + 14
   else
       term = term / 2
   end
   table.insert(series, term)
end

print("Generated series:")
for _, value in ipairs(series) do
   print(value)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code initializes a variable "term" with the value 9 and creates a table "series" containing this term. It then enters a loop that runs from 2 to 10. Within each iteration, it checks whether the current index "i" is even or odd using the modulo operator. If "i" is even, it adds 14 to the current "term," otherwise, it divides the "term" by 2. The calculated "term" is inserted into the "series" table.

After the loop, the program prints "Generated series:" and then, using a loop, displays each value within the "series" table. The output will be a series of numbers derived from the initial term and alternating operations of addition and division
''',
"e": "",
"category": "series"
},
{
"no": 84,
"q":
"Write a program to ask number and count total number of odd digits",
"a": '''
    -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Count odd digits
local oddCount = 0
local numStr = tostring(number)
for i = 1, #numStr do
   local digit = tonumber(numStr:sub(i, i))
   if digit % 2 == 1 then
       oddCount = oddCount + 1
   end
end

print("Total odd digits:", oddCount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code takes user input for a number and calculates the count of odd digits within it. It uses a loop to iterate through each digit of the input number, checking if the digit is odd by examining the remainder of its division by 2. If the remainder is 1, the code increments the "oddCount" variable. After the loop, the program displays "Total odd digits:" followed by the value of "oddCount." This concise code effectively processes user input, counts the odd digits, and provides the count as output.
''',
"e": ""
},
{
"no": 85,
"q": "Write a program to print square root of an ask number",
"a": '''
  -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Calculate and print square root
local sqrt = math.sqrt(number)
print("Square root:", sqrt)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code snippet begins by requesting the user to input a number. The entered value is then captured and stored in the variable "number" after being converted into a numeric format using the `tonumber` function.

Subsequently, the code computes the square root of the input number using the `math.sqrt` function, and the resultant value is assigned to the variable "sqrt."

Finally, the program prints the message "Square root:" followed by the value stored in the "sqrt" variable, thereby displaying the calculated square root of the provided number. In summary, this succinct code effectively receives a number, calculates its square root, and presents the result to the user.
''',
"e": " "
},
{
"no": 86,
"q":
"Write a program to enter any ten strings and print the shortest string",
"a": '''
-- Input loop to get 10 strings
local strings = {}
for i = 1, 10 do
   io.write("Enter string ", i, ": ")
   local input = io.read()
   table.insert(strings, input)
end

-- Find the shortest string
local shortest = strings[1]
for i = 2, 10 do
   if #strings[i] < #shortest then
       shortest = strings[i]
   end
end

print("Shortest string:", shortest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code utilizes an input loop to collect 10 strings from the user. Within each iteration, a prompt is displayed, and the user's input is stored in the "strings" table using the `table.insert` function.

Subsequently, the code employs another loop to traverse the "strings" table and compare the lengths of the strings. The variable "shortest" is initialized with the first string from the table, and it is updated to the value of any shorter string encountered during the loop.

Finally, the program prints "Shortest string:" followed by the content of the "shortest" variable. In essence, this concise code effectively gathers input strings, identifies the shortest string among them based on length, and provides the user with the result.
''',
"e": ""
},
{
"no": 87,
"q":
"Write a program to enter any two numbers and display the greater one.",
"a": '''
    -- Input
io.write("Enter the first number: ")
local num1 = tonumber(io.read())
io.write("Enter the second number: ")
local num2 = tonumber(io.read())

-- Compare and display the greater number
if num1 > num2 then
   print("Greater number:", num1)
elseif num2 > num1 then
   print("Greater number:", num2)
else
   print("Both numbers are equal.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code captures input from the user for two numbers. The first number is prompted for and stored in the variable "num1," and the second number is prompted for and stored in the variable "num2."

Subsequently, the code employs a conditional structure to compare the two numbers. If "num1" is greater than "num2," it prints "Greater number: num1." If "num2" is greater than "num1," it prints "Greater number: num2." If both numbers are equal, it prints "Both numbers are equal."

In essence, this concise code effectively collects two numbers from the user, compares them, and displays the result regarding which number is greater or if they are equal.
''',
"e": " "
},
{
"no": 88,
"q":
"Write a program to enter any 15 numbers and print only those numbers which are divisible by 5 and 7",
"a": '''
     -- Input loop to get 15 numbers
local numbers = {}
for i = 1, 15 do
   io.write("Enter number ", i, ": ")
   local num = tonumber(io.read())
   table.insert(numbers, num)
end

-- Print numbers divisible by 5 and 7
print("Numbers divisible by 5 and 7:")
for _, num in ipairs(numbers) do
   if num % 5 == 0 and num % 7 == 0 then
       print(num)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code establishes an input loop that iterates 15 times. Within each iteration, the user is prompted to enter a number. The input is stored in a table named "numbers" using the `table.insert` function.

Subsequently, the code utilizes a second loop to traverse the "numbers" table. It checks each number to ascertain if it's divisible by both 5 and 7 by using the modulo operator. If the conditions are met, the number is printed. The code concludes by displaying the message "Numbers divisible by 5 and 7:" followed by the list of numbers that meet the divisible criteria. This concise code effectively gathers input and prints numbers divisible by both 5 and 7 from the provided set of 15 numbers.
''',
"e": " "
},
{
"no": 89,
"q":
"Write a program to generate the following series 1  23  456  78910",
"a": '''
local num = 1

for i = 1, 4 do
   local str = ""
   for j = 1, i do
       str = str .. tostring(num)
       num = num + 1
   end
   print(str)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a patterned series of numbers. It starts with `num` as 1 and enters an outer loop that runs four times. In each iteration, an inner loop constructs a string `str` by appending the current value of `num` as a string, incrementing `num` afterwards. This creates a sequence of increasing numbers as the inner loop iterates. The `str` is printed in each iteration of the outer loop, leading to the following output:
from 1 to 10, divided into rows corresponding to the outer loop's iteration count.
''',
"e": " ",
"category": "series"
},
{
"no": 90,
"q":
"Write a program to ask number and check whether the given no is prime or composite",
"a": '''
-- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Function to check if a number is prime
local function isPrime(n)
   if n <= 1 then
       return false
   end
   for i = 2, math.sqrt(n) do
       if n % i == 0 then
           return false
       end
   end
   return true
end

-- Check and print if the number is prime or composite
if isPrime(number) then
   print(number, "is a prime number.")
else
   print(number, "is a composite number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code takes user input for a number, then uses a function to assess if it's prime. If the number is greater than 1 and has no divisors other than 1 and itself, it's considered prime; otherwise, it's composite. The result is then displayed to the user, effectively determining the number's prime or composite status.
''',
"e": ""
},
{
"no": 91,
"q": "Write a program to convert binary number to decimal number",
"a": '''
    -- Input
io.write("Enter a binary number: ")
local binary = io.read()

-- Convert binary to decimal
local decimal = tonumber(binary, 2)

print("Decimal equivalent:", decimal)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a binary number. The provided input is captured and stored in the variable "binary."

The code then proceeds to convert the binary number to its decimal equivalent using the `tonumber` function with a base argument of 2. The calculated decimal value is stored in the variable "decimal."

Finally, the program prints "Decimal equivalent:" followed by the value stored in the "decimal" variable. The output will display the decimal representation of the provided binary number.

In essence, this compact code effectively collects a binary number, performs the conversion to decimal, and displays the result to the user.
''',
"e": " ",
"f": " "
},
{
"no": 92,
"q":
"Write a program to ask any number and check whether the given number is Armstrong or not",
"a": '''
    -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Function to calculate the sum of cubes of digits
local function sumOfCubes(n)
   local sum = 0
   local numStr = tostring(n)
   for i = 1, #numStr do
       local digit = tonumber(numStr:sub(i, i))
       sum = sum + digit ^ 3
   end
   return sum
end

-- Check and print if the number is Armstrong
if sumOfCubes(number) == number then
   print(number, "is an Armstrong number.")
else
   print(number, "is not an Armstrong number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code begins by prompting the user to input a number. The input is captured and converted into a numeric format, stored in the variable "number."
Next, a function named "sumOfCubes" is defined. This function calculates the sum of the cubes of individual digits within a number. The input number is converted to a string, and each digit is iterated through. The digit is then converted back to a number and cubed, with the result added to a running sum.
After defining the function, the code checks whether the input number is an Armstrong number. It does so by comparing the sum of the cubes of its digits (as calculated by the "sumOfCubes" function) with the original input number. If they are equal, it prints "number is an Armstrong number." Otherwise, it prints "number is not an Armstrong number."
''',
"e": ""
},
{
"no": 93,
"q":
"Write a program to print first ten multiples of ask number",
"a": '''
    -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Print first ten multiples
print("First ten multiples of", number, ":")
for i = 1, 10 do
   local multiple = number * i
   print(multiple)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code starts by prompting the user to input a number. The input is captured and converted to numeric format, stored in the variable "number."

Subsequently, the code enters a loop that iterates ten times. During each iteration, it calculates the multiple of the input number and the current iteration index. This multiple is then printed.

Overall, the program effectively collects a number, computes its first ten multiples, and displays the results to the user.
''',
"e": ""
},
{
"no": 94,
"q":
"Write a program to ask three sides of a triangle and determine whether a triangle is right angled triangle or not",
"a": '''
    -- Input
io.write("Enter the three sides of the triangle:\n")
local side1 = tonumber(io.read())
local side2 = tonumber(io.read())
local side3 = tonumber(io.read())

-- Function to check if a triangle is right-angled
local function isRightAngled(a, b, c)
   local sides = {a, b, c}
   table.sort(sides)
   return sides[3]^2 == sides[1]^2 + sides[2]^2
end

-- Check and print if the triangle is right-angled
if isRightAngled(side1, side2, side3) then
   print("The triangle is a right-angled triangle.")
else
   print("The triangle is not a right-angled triangle.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code initiates by prompting the user to input the lengths of three sides of a triangle. Each input is stored in separate variables named "side1," "side2," and "side3."

The program then defines a function named "isRightAngled," which determines whether a triangle is right-angled based on the Pythagorean theorem. The function sorts the side lengths in ascending order using the `table.sort` function and checks if the square of the longest side is equal to the sum of the squares of the other two sides.

Following the function definition, the code evaluates whether the provided sides form a right-angled triangle by invoking the "isRightAngled" function. If the function returns true, it prints "The triangle is a right-angled triangle." If not, it prints "The triangle is not a right-angled triangle."

In summary, this concise code effectively collects side lengths of a triangle, checks if it's right-angled using the Pythagorean theorem, and provides the result to the user.
''',
"e": ""
},
{
"no": 95,
"q":
"Write a program to check whether the asked number is perfect number or not",
"a": '''
   -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Function to check if a number is a perfect number
local function isPerfectNumber(n)
   local sum = 1
   for i = 2, n / 2 do
       if n % i == 0 then
           sum = sum + i
       end
   end
   return sum == n
end

-- Check and print if the number is a perfect number
if isPerfectNumber(number) then
   print(number, "is a perfect number.")
else
   print(number, "is not a perfect number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code begins by prompting the user to input a number. The input is captured and converted into a numeric format, stored in the variable "number."

Next, a function named "isPerfectNumber" is defined. Within this function, a loop runs from 2 to half of the input number. If the input number is divisible by "i" (where "i" is the loop variable), the value of "i" is added to a running sum. The function returns a Boolean indicating whether the sum of divisors (excluding the number itself) is equal to the input number.

After defining the function, the code checks if the input number is a perfect number by calling the "isPerfectNumber" function. If the function returns true, it prints "number is a perfect number." Otherwise, it prints "number is not a perfect number."

In summary, this code collects a number, evaluates whether it's a perfect number using the defined function, and provides the result to the user.
''',
"e": " "
},
{
"no": 96,
"q":
"Write a program to print the sum of the numbers between 2 to 50",
"a": '''
local sum = 0

for i = 2, 50 do
   sum = sum + i
end

print("Sum of numbers between 2 and 50:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code computes the sum of numbers within the range of 2 to 50. It initializes the variable "sum" as 0. The loop iterates from 2 to 50, and in each iteration, the current value of "i" is added to the "sum."

Once the loop completes, the program prints "Sum of numbers between 2 and 50:" followed by the value stored in the "sum" variable. The output will be the sum of all numbers between 2 and 50.
''',
"e": ""
},
{
"no": 97,
"q":
"Write a program to generate the following numeric pattern 1  12  123  1234  12345",
"a": '''
  for i = 1, 3 do
   local str = ""
   for j = 1, i do
       str = str .. tostring(j)
   end
   print(str)
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a patterned series of numbers. The outer loop iterates three times, with each iteration representing a row. Within each iteration, an inner loop constructs an empty string "str" and appends the current value of "j" (ranging from 1 to the value of "i") as a string to it. After each inner loop iteration, the constructed "str" is printed.
''',
"e": " ",
"category": "series"
},
{
"no": 98,
"q":
"Write a program to check whether the supplied character is alphabet or not",
"a": '''
   -- Input
io.write("Enter a character: ")
local char = io.read()

-- Check and print if the character is in the alphabet
if char:match("%a") then
   print("The character is in the alphabet.")
else
   print("The character is not in the alphabet.")
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code initiates by prompting the user to input a character. The provided character is captured and stored in the variable "char."
The program then utilizes a conditional structure to assess whether the character is within the alphabet. It does this by using the `match` function with the pattern "%a," which specifically matches alphabetic characters. If the condition is met, the code prints "The character is in the alphabet." Otherwise, it prints "The character is not in the alphabet."

In essence, this succinct code effectively collects a character and determines whether it is part of the alphabet or not, subsequently providing the appropriate outcome.
''',
"e": " "
},
{
"no": 99,
"q":
"Write a program to input any number and check whether the given no. is positive   negative or zero.",
"a": '''
    -- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Check and print if the number is positive, negative, or zero
if number > 0 then
   print("The number is positive.")
elseif number < 0 then
   print("The number is negative.")
else
   print("The number is zero.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code captures user input for a number and checks its value to determine whether it's positive, negative, or zero. Using an if-else structure, it evaluates the number against conditions. If the number is greater than 0, it prints "The number is positive." If the number is less than 0, it prints "The number is negative." If neither of these conditions is met, it prints "The number is zero." In summary, this concise code effectively collects a number, performs a comparison, and provides feedback about its positive, negative, or zero nature.
''',
"e": " "
},
{
"no": 100,
"q":
"Write a program to generate the following series 55555  4444  333  22  1",
"a": '''
 for i = 5, 1, -1 do
   for j = 1, i do
       io.write(i)
   end
   print()  -- Move to the next line
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a descending numeric pattern. The outer loop iterates from 5 down to 1. Within each iteration, an inner loop prints the value of "i" for "j" times, resulting in a line of repeated "i" values. After each inner loop iteration, a newline character is printed to move to the next line.
''',
"e": "",
"category": "series"
},
{
"no": 101,
"q":
"Write a program to print all odd numbers from 1 to 100 in descending order",
"a": '''
     for i = 99, 1, -2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates and prints odd numbers in descending order from 99 down to 1. It employs a loop that iterates in reverse, starting from 99 and decreasing by 2 in each step. Within each iteration, the current odd number "i" is printed. As a result, the code effectively generates and displays the odd numbers in the specified range in descending order: 99, 97, 95, ..., 3, 1.
''',
"e": " ",
"f": " "
},
{
"no": 102,
"q":
"Write a program to enter any two numbers and display the smaller one.",
"a": '''
print("Enter the first number:")
local num1 = tonumber(io.read())
print("Enter the second number:")
local num2 = tonumber(io.read())

if num1 < num2 then
   print("The smaller number is:", num1)
else
   print("The smaller number is:", num2)
end
 ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code snippet compares two numbers and displays the smaller one. It prompts the user to input two numbers, `num1` and `num2`, then uses an `if` statement to compare them. If `num1` is less than `num2`, it prints "The smaller number is: num1". Otherwise, it prints "The smaller number is: num2". This concise code segment effectively determines and displays the smaller of the two input numbers, showcasing a straightforward way to perform a basic comparison.
''',
"e": ""
},
{
"no": 103,
"q": "Write a program to print numbers 1  3  5……..30",
"a": '''
     for i = 1, 30, 2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates and prints odd numbers from 1 to 30. It employs a loop that iterates from 1 to 30 with a step of 2, ensuring only odd numbers are considered. Within each iteration, the current odd number "i" is printed. As a result, the code effectively generates and displays the odd numbers in the specified range: 1, 3, 5, ..., 29.
''',
"e": "",
"category": "series"
},
{
"no": 104,
"q":
"Write a program to input the age of a person and find out whether the person is eligible to vote or not.",
"a": '''
      io.write("Enter the age: ")
local age = tonumber(io.read())

if age >= 18 then
   print("The person is eligible to vote.")
else
   print("The person is not eligible to vote.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code collects a person's age and checks if they are eligible to vote. It prompts the user to input their age, which is stored in the "age" variable. The program then evaluates whether the age is greater than or equal to 18, which is the voting age in many countries. Depending on the evaluation, it prints either "The person is eligible to vote" or "The person is not eligible to vote." This efficient code efficiently determines voting eligibility and provides appropriate feedback to the user.
''',
"e": ""
},
{
"no": 105,
"q":
"Write a program to print the sum of even numbers between 2 to 50",
"a": '''
   local sum = 0

for i = 2, 50, 2 do
   sum = sum + i
end

print("Sum of even numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the sum of even numbers between 2 and 50. It initializes "sum" to 0 and enters a loop that iterates from 2 to 50 with a step of 2, ensuring only even numbers are considered. In each iteration, the current even number "i" is added to the ongoing sum. After the loop, the total sum of even numbers is printed. This concise program effectively calculates and communicates the sum of even numbers within the specified range.
''',
"e": " "
},
{
"no": 106,
"q":
"Write a program using to print product of all numbers from 4 to 8",
"a": '''
    local product = 1

for i = 4, 8 do
   product = product * i
end

print("Product:", product)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the product of numbers within a given range. It initializes "product" to 1 and enters a loop that iterates from 4 to 8. In each iteration, "i" is multiplied with the current value of "product," and the result is stored back in "product." After the loop, the calculated product value is printed. This code effectively computes and communicates the product of numbers from 4 to 8.
''',
"e": ""
},
{
"no": 107,
"q":
"Write a program to print the series 2  8  18  32…..upto 10th term",
"a": '''
     local term = 2

for i = 2, 10 do
   term = term + i * i
   print(term)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a sequence based on the provided pattern. It initializes "term" to 2 and enters a loop that iterates from 2 to 10. In each iteration, "term" is updated by adding the square of the current iteration index "i" multiplied by itself. The resulting "term" value is printed.
''',
"e": " ",
"category": "series"
},
{
"no": 108,
"q":
"Write a program in java to generate the following series 5  54  543  5432  54321",
"a": '''
    local num = 5
local str = ""

for i = 1, 5 do
   str = num .. str
   print(str)
   num = num - 1
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a descending numeric pattern. It initializes "num" to 5 and "str" to an empty string. It then enters a loop that iterates five times. In each iteration, "num" is concatenated to the beginning of "str," and the updated "str" is printed. After each iteration, "num" is decremented by 1.
''',
"e": " ",
"category": "series"
},
{
"no": 109,
"q":
"Write a program to ask number and find sum square of digits",
"a": '''
    io.write("Enter a number: ")
local number = tonumber(io.read())

local sumSquare = 0
local numStr = tostring(number)

for i = 1, #numStr do
   local digit = tonumber(numStr:sub(i, i))
   sumSquare = sumSquare + digit * digit
end

print("Sum of squares of digits:", sumSquare)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code collects a number from the user and calculates the sum of the squares of its digits. It achieves this by converting the number to a string and then iterates through each digit. In each iteration, the digit is squared and added to the ongoing sum. The result, which represents the sum of the squares of digits, is printed. This compact program effectively processes the input number, computes the required sum, and delivers the outcome to the user.
''',
"e": " "
},
{
"no": 110,
"q":
"Write a program to ask any string and count total no. of words",
"a": '''
    io.write("Enter a string: ")
local input = io.read()

local words = 0
for word in input:gmatch("%S+") do
   words = words + 1
end

print("Total number of words:", words)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program counts and prints the total number of words in a given string. It starts by prompting the user to input a string. The program then uses a `for` loop with the `gmatch` function and the pattern `%S+` to iterate through each word in the input string. For each word found, the `words` counter is incremented. Finally, the program displays the total number of words in the input string by printing the value of the `words` variable.
''',
"e": ""
},
{
"no": 111,
"q":
"Write a program to ask any string and count total no. of vowels   ",
"a": '''
     io.write("Enter a string: ")
local input = io.read()

local vowels = "aeiouAEIOU"
local vowelCount = 0

for i = 1, #input do
   local char = input:sub(i, i)
   if vowels:find(char, 1, true) then
       vowelCount = vowelCount + 1
   end
end

print("Total number of vowels:", vowelCount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program prompts the user for a string and calculates the total count of vowels (both uppercase and lowercase) within the input. It initializes a count variable to zero and defines a string containing vowel characters. Through a loop, it scans each character in the input string and checks if it exists in the vowels string. Upon finding a vowel, the count increases. After the loop, the program prints the total count of vowels in the input. This helps determine the occurrence of vowels in the provided string.
''',
"e": " ",
"f": " "
},
{
"no": 112,
"q":
"Write a program to print h.c.f and l.c.m  of a any two given numbers by user",
"a": '''
    io.write("Enter the first number: ")
local num1 = tonumber(io.read())
io.write("Enter the second number: ")
local num2 = tonumber(io.read())

local function gcd(a, b)
   while b ~= 0 do
       a, b = b, a % b
   end
   return a
end

local lcm = (num1 * num2) / gcd(num1, num2)

print("H.C.F:", gcd(num1, num2))
print("L.C.M:", lcm)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program calculates and prints both the Highest Common Factor (H.C.F) and Least Common Multiple (L.C.M) of two given numbers. It starts by prompting the user to input two numbers. The `gcd` function calculates the H.C.F using the Euclidean algorithm. Then, the program calculates the L.C.M using the formula `(num1 * num2) / gcd(num1, num2)`. Finally, it displays the calculated H.C.F and L.C.M using the values obtained from the `gcd` function and the L.C.M formula, respectively.
''',
"e": ""
},
{
"no": 113,
"q":
"Write a program to generate the series 3  10  5  16………………11th term",
"a": '''
   local term = 3

for i = 1, 11 do
   print(term)
   if i % 2 == 0 then
       term = term + 7
   else
       term = term + 2
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers according to a pattern. The initial term is set to 3. In each iteration of the loop, the current term is printed, and then the next term is calculated based on whether the current iteration index `i` is even or odd. If `i` is even, 7 is added to the term; otherwise, 2 is added.
''',
"e": "",
"category": "series"
},
{
"no": 114,
"q":
"Write a program to print the following series 9  7  5  ...1",
"a": '''
  for i = 9, 1, -2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prints the sequence of numbers in descending order from 9 to 1, with a step of -2. The `for` loop iterates through the values starting from 9 and decreasing by 2 in each iteration. The loop then prints each value, resulting in the sequence "9," "7," "5," and "3."
''',
"e": "",
"category": "series"
},
{
"no": 115,
"q":
"Write a program to convert decimal number to hexadecimal number",
"a": '''
      io.write("Enter a decimal number: ")
local decimal = tonumber(io.read())

local hexadecimal = string.format("%x", decimal)
print("Hexadecimal equivalent:", hexadecimal)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program converts a decimal number to its hexadecimal equivalent. It prompts the user to input a decimal number, then uses the `string.format` function with the format specifier `%x` to convert the decimal number into its hexadecimal representation. The resulting hexadecimal value is printed as the output, displaying the hexadecimal equivalent of the input decimal number.
''',
"e": " "
},
{
"no": 116,
"q":
"Write a program to ask any number and print the prime factors",
"a": '''
    -- Function to find prime factors
local function primeFactors(n)
   local factors = {}
   local d = 2
   while n > 1 do
       while n % d == 0 do
           table.insert(factors, d)
           n = n / d
       end
       d = d + 1
   end
   return factors
end

-- Input
io.write("Enter a number: ")
local number = tonumber(io.read())

-- Calculate and print prime factors
local factors = primeFactors(number)
print("Prime factors:", table.concat(factors, ", "))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program calculates and prints the prime factors of a given number. The `primeFactors` function implements a trial division algorithm to find the prime factors of the input number. It starts dividing the number by the smallest prime (2) and then increments the divisor until the number becomes 1. The program prompts the user to input a number, calculates its prime factors using the `primeFactors` function, and then displays the list of prime factors as a comma-separated string.
''',
"e": ""
},
{
"no": 117,
"q": "Write a program to print h.c.f of a any two given numbers",
"a": '''
   -- Function to calculate H.C.F
local function gcd(a, b)
   while b ~= 0 do
       a, b = b, a % b
   end
   return a
end

-- Input
io.write("Enter the first number: ")
local num1 = tonumber(io.read())
io.write("Enter the second number: ")
local num2 = tonumber(io.read())

-- Calculate and print H.C.F
print("H.C.F:", gcd(num1, num2))
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program calculates and prints the Highest Common Factor (H.C.F) of two given numbers using the Euclidean algorithm. The function `gcd` takes two numbers and iteratively swaps and reduces them using the modulo operation until one of the numbers becomes zero. The final value of the non-zero number is the H.C.F. The program prompts the user to input two numbers, and then it calculates and displays their H.C.F using the `gcd` function.
''',
"e": " "
},
{
"no": 118,
"q": "Write a program to print all odd numbers from 1 to 100",
"a": '''
    for i = 1, 100, 2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates and prints odd numbers between 1 and 100. It uses a `for` loop that iterates through odd numbers by starting at 1 and incrementing by 2 in each iteration. The loop prints each odd number as it iterates, resulting in the sequence of odd numbers from 1 to 99 being displayed.
''',
"e": " "
},
{
"no": 119,
"q":
"Write a program to generate the series 55555  5555  555  55  5",
"a": '''
   for i = 5, 1, -1 do
   local str = string.rep("5", i)
   print(str)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers with descending repetitions of the digit "5." It utilizes a loop that iterates from 5 to 1 in reverse steps. Inside the loop, the `string.rep` function constructs a string containing "5" repeated according to the current iteration value. This resulting string is printed, forming the sequence "55555," "5555," "555," "55," and "5," as specified in the problem.
''',
"e": " ",
"category": "series"
},
{
"no": 120,
"q":
"Write a program to generate the series 1  2  3  5…………9th terms",
"a": '''
for i = 1, 9 do
   if i == 4 then
       io.write("4 ")
   else
       io.write(i + 1, " ")
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code initializes a loop that iterates over the range of numbers from 1 to 9. Inside the loop, there is a conditional statement that checks if the current value of `i` is equal to 4. If it is, the code uses the `io.write` function to print "4" followed by a space. Otherwise, for values of `i` other than 4, the code uses the `io.write` function to print `i + 1` followed by a space. This effectively generates a series of numbers based on the condition. When executed, this code will produce the series 2, 3, 4, 4, 6, 7, 8, 9, with each number separated by a space.
''',
"e": "",
"category": "series"
},
{
"no": 121,
"q": "Write a program to print numbers 70  61  52…..7",
"a": '''
   for i = 70, 7, -9 do
   io.write(i, " ")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code initializes a loop that iterates over a range of numbers in reverse order, starting from 70 and decreasing by 9 in each step until it reaches or goes below 7. Inside the loop, the `io.write` function is used to print the current value of `i` followed by a space, effectively displaying each number separated by a space. The loop continues until the condition `i >= 7` is met. When executed, this code will generate the series of numbers 70, 61, 52, 43, 34, and 25, with each number separated by a space.
''',
"e": " ",
"f": " ",
"category": "series"
},
{
"no": 122,
"q":
"Write a program to generate the series 100  95  90…………………10th term",
"a": '''
   for i = 100, 10, -5 do
   io.write(i, " ")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code initializes a loop that iterates over a range of numbers in reverse order, starting from 100 and decreasing by 5 in each step until it reaches or goes below 10. Inside the loop, the `io.write` function is used to print the current value of `i` followed by a space, effectively displaying each number separated by a space. The loop continues until the condition `i >= 10` is met. When executed, this code will produce the series of numbers 100, 95, 90, 85, ..., 15, 10, with each number separated by a space.
''',
"e": "",
"category": "series"
},
{
"no": 123,
"q":
"Write a program TO ENTER ANY DIGIT AND PRINT ITS REVERSED FORM",
"a": '''
io.write("Enter a number: ")
local number = io.read("*n")
local reversed = 0

while number > 0 do
   reversed = reversed * 10 + number % 10
   number = math.floor(number / 10)
end

print("Reversed number:", reversed)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code takes an integer input from the user and then proceeds to reverse the digits of that input number. It starts by prompting the user to enter a number using the `io.write` function and capturing the input with `io.read("*n")`. The variable `reversed` is initialized to 0, and then a `while` loop is used to iteratively reverse the digits of the input number. Inside the loop, the last digit of the current `number` is extracted using the modulo operator `%`, and it's added to the `reversed` number by multiplying the existing `reversed` value by 10 and adding the extracted digit. Then, the last digit is removed from the `number` by dividing it with 10 using `math.floor(number / 10)`. This process continues until the `number` becomes 0, and the loop terminates. Finally, the code prints the reversed number using the `print` function. The outcome of this program is that it takes an integer input and returns its reversed form.
''',
"e": ""
},
{
"no": 124,
"q":
"Write a program to enter any three numbers and display the smallest one.",
"a": '''
     io.write("Enter the first number: ")
local num1 = io.read("*n")

io.write("Enter the second number: ")
local num2 = io.read("*n")

io.write("Enter the third number: ")
local num3 = io.read("*n")

local smallest = math.min(num1, num2, num3)
print("The smallest number is:", smallest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input three numbers sequentially. It uses the `io.write` function to display prompts and the `io.read("*n")` function to capture numerical input from the user. The entered numbers are stored in the variables `num1`, `num2`, and `num3`. Then, the program employs the `math.min` function to determine the smallest value among the three input numbers. Finally, it prints out the result, displaying the smallest number using the `print` function. This program essentially enables users to input three numbers, and it calculates and showcases the smallest value among the inputs.
''',
"e": ""
},
{
"no": 125,
"q":
"Write a program to print the sum of square of odd numbers up to 100",
"a": '''
    local sum = 0

for i = 1, 100, 2 do
   sum = sum + (i * i)
end

print("Sum of squares of odd numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code initializes a local variable `sum` to 0. It then employs a `for` loop to iterate over a range of odd numbers starting from 1 and incrementing by 2 up to 100. Within each iteration, the code calculates the square of the current odd number `i` by squaring `i` and adds it to the `sum` variable. This process accumulates the sum of the squares of odd numbers within the specified range. After the loop concludes, the code utilizes the `print` function to display the calculated sum, generating the output "Sum of squares of odd numbers:" followed by the computed sum of the squares of odd numbers between 1 and 100. The program calculates and presents the sum of the squares of odd numbers within the given range.
''',
"e": " "
},
{
"no": 126,
"q":
"Write a program to print the sum of even numbers between 2 to 50",
"a": '''
     local sum = 0

for i = 2, 50, 2 do
   sum = sum + i
end

print("Sum of even numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''In this Lua code, a local variable `sum` is initialized to 0. The code then utilizes a `for` loop to iterate over a range of even numbers starting from 2 and incrementing by 2 up to 50. During each iteration, the current value of `i` is added to the `sum` variable, effectively accumulating the sum of the even numbers within the specified range. After the loop concludes, the code employs the `print` function to display the calculated sum, providing the output "Sum of even numbers:" followed by the computed sum of even numbers between 2 and 50. This program calculates and presents the sum of even numbers within the designated range.
''',
"e": ""
},
{
"no": 127,
"q":
"Write a program to input a mark in a subject of a student and check if the student is pass or nor.",
"a": '''
io.write("Enter the student's mark: ")
local mark = io.read("*n")

if mark >= 40 then
   print("Student passed.")
else
   print("Student did not pass.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input a student's mark using the `io.write` function. The entered numerical mark is stored in the variable `mark` using `io.read("*n")`. Subsequently, an `if` statement is employed to check if the value of `mark` is greater than or equal to 40, which is the passing threshold. If the condition is met, the program prints "Student passed." using the `print` function. Otherwise, if the condition is not met, it prints "Student did not pass.". This program effectively evaluates the student's mark and provides feedback based on whether the mark qualifies as a passing grade or not.
''',
"e": " "
},
{
"no": 128,
"q": "Write a program to ask number and find product of digits",
"a": '''
   io.write("Enter a number: ")
local number = io.read("*n")

local product = 1
local num = number

while num > 0 do
   local digit = num % 10
   product = product * digit
   num = math.floor(num / 10)
end

print("Product of digits:", product)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number and calculates the product of its individual digits. The code initializes `product` to 1 and iterates through each digit using a `while` loop. In each iteration, the last digit of `num` is obtained using the modulo operator and multiplied with `product`, updating the product. Then, the last digit is removed by integer division. This process continues until all digits are processed. Finally, the code prints the computed product. This program effectively calculates and displays the product of the digits in the entered number, showcasing a multiplication of its constituent digits.
''',
"e": " "
},
{
"no": 129,
"q": "Write a program using to print first 13 odd numbers",
"a": '''
    for i = 1, 13 do
   local odd_number = 2 * i - 1
   io.write(odd_number, " ")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code utilizes a loop that iterates from 1 to 13, inclusive. Within each iteration, a local variable `odd_number` is calculated by multiplying `i` by 2 and then subtracting 1. This computation generates a sequence of odd numbers: 1, 3, 5, ..., as each `i` value corresponds to the position of an odd number in the sequence. The `io.write` function is then used to print the calculated `odd_number` followed by a space, resulting in the output of the first 13 odd numbers, consecutively separated by spaces. The loop effectively generates and prints this sequence of odd numbers.
''',
"e": " "
},
{
"no": 130,
"q": "Write a program to ask any number and find sum of factors",
"a": '''
-- Function to find sum of factors
function sumOfFactors(n)
    local sum = 0
    for i = 1, n do
        if n % i == 0 then
            sum = sum + i
        end
    end
    return sum
end

-- Main program
print("Enter a number:")
local num = tonumber(io.read())
local result = sumOfFactors(num)
print("Sum of factors:", result)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code encompasses a function named `sumOfFactors` that effectively calculates the sum of factors for a given number. The function iterates through potential divisors using a `for` loop, checking divisibility with the input number. If a divisor is found, it contributes to an accumulating sum. In the main program, the user inputs a number, and the code employs the `sumOfFactors` function to compute the sum of its factors. The resulting sum is then displayed with "Sum of factors: result". In essence, this code proficiently calculates and presents the sum of factors for the provided number, underscoring its capability in performing this mathematical operation.
''',
"e": ""
},
{
"no": 131,
"q":
"Write a program to enter any ten strings and sort in descending order",
"a": '''
local strings = {}

for i = 1, 10 do
   io.write("Enter string ", i, ": ")
   strings[i] = io.read()
end

table.sort(strings, function(a, b)
   return a > b
end)

print("Strings in descending order:")
for _, str in ipairs(strings) do
   print(str)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation": '''This Erlang program reads ten strings from the user, sorts them in descending order, and then prints the sorted list.

The `main/0` function initializes by calling the `read_strings/1` function to obtain a list of strings from the user.

The `read_strings/1` function uses recursion to read strings. When `N` is 0, the function terminates and returns an empty list. Otherwise, it prompts the user for a string using `io:format/2` and `io:get_line/1`, and recursively collects the strings.

After obtaining the list of strings, the program sorts them in descending order using the `lists:sort/2` function with a custom comparison function. The comparison function `fun(A, B) -> A > B end` sorts the strings in descending order based on string comparison. Finally, the sorted list is printed using `io:format/2`.
''',
"e": " ",
"f": " "
},
{
"no": 132,
"q": "Write a program to ask any string and print only vowels",
"a": '''
    io.write("Enter a string: ")
local input = io.read()

local vowels = "AEIOUaeiou"
local vowel_string = ""

for i = 1, #input do
   local char = input:sub(i, i)
   if vowels:find(char, 1, true) then
       vowel_string = vowel_string .. char
   end
end

print("Vowels in the string:", vowel_string)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code prompts the user to input a string and captures it. It then iterates through each character of the input string using a `for` loop. For each character, it checks if it's a vowel by searching within a predefined list of vowels. If a vowel is found, it's added to a string `vowel_string`. After processing all characters, the program displays the collected vowels using `print`, presenting "Vowels in the string:" followed by the identified vowels. This code efficiently extracts and showcases the vowels from the provided string input.
''',
"e": ""
},
{
"no": 133,
"q":
"Write a program to ask any number and print the factorial of a given number",
"a": '''
    io.write("Enter a number: ")
local num = io.read("*n")
local factorial = 1

for i = 1, num do
   factorial = factorial * i
end

print("Factorial of", num, "is:", factorial)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number using the `io.write` function. The numeric input is captured using the `io.read("*n")` function and stored in the variable `num`. The code initializes a local variable `factorial` to 1.

A `for` loop is employed to iterate from 1 to the entered number `num`. In each iteration, the code multiplies the current value of `factorial` by the loop counter `i`, effectively accumulating the product of all the numbers from 1 to `num`.

After the loop concludes, the code employs the `print` function to display the computed factorial, generating the output "Factorial of [num] is: [factorial]". This program efficiently calculates and presents the factorial of the entered number, showcasing the product of all integers from 1 to the given value.
''',
"e": ""
},
{
"no": 134,
"q":
"Write a program to print square of all numbers from 1 to 50",
"a": '''
    for i = 1, 50 do
   local square = i * i
   print("Square of", i, "is:", square)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code utilizes a `for` loop to iterate over numbers from 1 to 50. Within each iteration, the code calculates the square of the current number `i` by multiplying `i` with itself, and assigns the result to the variable `square`. The code then employs the `print` function to display the calculated square, generating the output "Square of [i] is: [square]" for each iteration. This program effectively calculates and presents the squares of numbers from 1 to 50, providing their corresponding values within the specified format.
''',
"e": ""
},
{
"no": 135,
"q": "Write a program to print all prime numbers from 1 to 100",
"a": '''
   local function is_prime(n)
   if n <= 1 then
       return false
   end

   for i = 2, math.sqrt(n) do
       if n % i == 0 then
           return false
       end
   end

   return true
end

print("Prime numbers from 1 to 100:")
for i = 1, 100 do
   if is_prime(i) then
       print(i)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code defines a local function `is_prime(n)` to check if a number `n` is prime. Within the function, it first checks if `n` is less than or equal to 1, returning `false` if true since prime numbers are greater than 1. Then, it iterates from 2 to the square root of `n` and checks if `n` is divisible evenly by any number in that range. If a divisor is found, the function returns `false` as the number is not prime. If no divisor is found, the function returns `true`.

The code then employs a `for` loop to iterate through numbers from 1 to 100. It uses the `is_prime` function to check if each number is prime and prints it if true. This program efficiently calculates and showcases prime numbers within the range of 1 to 100.
''',
"e": " "
},
{
"no": 136,
"q":
"Write a program to ask number and find product of even digits",
"a": '''
      io.write("Enter a number: ")
local number = io.read("*n")

local sum = 0
local num = number

while num > 0 do
   local digit = num % 10
   if digit % 2 == 0 then
       sum = sum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of even digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number, captures it, and initializes `sum` to 0. It then extracts and processes each digit of the number in a `while` loop. In each iteration, it calculates the last digit using modulo `%` and checks if it's even. If so, it adds the square of the digit to the accumulating `sum`. The digit is removed by integer division. This process continues until no digits remain. Finally, the code prints the computed sum using `print`, displaying "Sum of squares of even digits:" followed by the sum. This program efficiently computes and presents the sum of squares of even digits in the provided number.
''',
"e": ""
},
{
"no": 137,
"q":
"Write a program to ask number and find sum of square of odd digits",
"a": '''
     io.write("Enter a number: ")
local number = io.read("*n")

local sum = 0
local num = number

while num > 0 do
   local digit = num % 10
   if digit % 2 == 1 then
       sum = sum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of odd digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code prompts the user to input a number and calculates the sum of the squares of its odd digits. The code iterates through each digit of the input number using a `while` loop. During each iteration, the last digit is extracted using modulo `%` and checked if it's odd. If it is, the square of the digit is added to the accumulating `sum`. Then, the last digit is removed by dividing the number by 10. This process continues until no digits are left. Finally, the code displays the computed sum using the `print` function. The program effectively computes and showcases the sum of the squares of odd digits in the provided number.
''',
"e": " "
},
{
"no": 138,
"q":
"Write a program to ask number and find sum of square of even digits",
"a": '''
io.write("Enter a number: ")
local number = io.read("*n")

local sum = 0
local num = number

while num > 0 do
   local digit = num % 10
   if digit % 2 == 0 then
       sum = sum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of even digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code prompts the user for a number and calculates the sum of the squares of its even digits. It uses a `while` loop to iterate through the digits of the input number. In each iteration, it extracts the last digit using modulo `%` and checks if it's even. If so, it adds the square of the digit to an accumulating `sum`. The last digit is then removed by integer division. This process continues until no digits remain. Finally, the code prints the computed sum using `print`. The program efficiently computes and displays the sum of squares of even digits in the provided number.
''',
"e": " "
},
{
"no": 139,
"q":
"Write a program to ask number and find sum of square of odd digits  ",
"a": '''
     io.write("Enter a number: ")
local number = io.read("*n")

local sum = 0
local num = number

while num > 0 do
   local digit = num % 10
   if digit % 2 == 1 then
       sum = sum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of odd digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code prompts the user to input a number and calculates the sum of the squares of its odd digits. The code iterates through each digit of the input number using a `while` loop. During each iteration, the last digit is extracted using modulo `%` and checked if it's odd. If it is, the square of the digit is added to the accumulating `sum`. Then, the last digit is removed by dividing the number by 10. This process continues until no digits are left. Finally, the code displays the computed sum using the `print` function. The program effectively computes and showcases the sum of the squares of odd digits in the provided number.
''',
"e": " "
},
{
"no": 140,
"q":
"Write a program to ask number and find product of even digits",
"a": '''
     io.write("Enter a number: ")
local number = io.read("*n")

local sum = 0
local num = number

while num > 0 do
   local digit = num % 10
   if digit % 2 == 0 then
       sum = sum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of even digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number, captures it, and initializes `sum` to 0. It then extracts and processes each digit of the number in a `while` loop. In each iteration, it calculates the last digit using modulo `%` and checks if it's even. If so, it adds the square of the digit to the accumulating `sum`. The digit is removed by integer division. This process continues until no digits remain. Finally, the code prints the computed sum using `print`, displaying "Sum of squares of even digits:" followed by the sum. This program efficiently computes and presents the sum of squares of even digits in the provided number.
''',
"e": ""
},
{
"no": 141,
"q":
"Write a program TO CHECK WHETHER THE ASK NUMBER IS PERFECT SQUARE NUMBER OR NOT",
"a": '''
    print("Enter a number: ")
local num = tonumber(io.read())

local sqrtNum = math.sqrt(num)
if sqrtNum == math.floor(sqrtNum) then
   print(num .. " is a perfect square.")
else
   print(num .. " is not a perfect square.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number, which is converted into a numeric value using `tonumber()`. It calculates the square root of the number using `math.sqrt()`. The code then checks if the square root is equal to its integer floor value, indicating if the number is a perfect square. If the condition is met, it prints that the number is a perfect square; otherwise, it prints that the number is not a perfect square. This code effectively determines whether the input number is a perfect square or not.
''',
"e": " ",
"f": " "
},
{
"no": 142,
"q":
"Write a program to input sales amount and rate of commission then calculate commission and return net sales. [ns=sa-c)",
"a": '''
   print("Enter sales amount: ")
local salesAmount = tonumber(io.read())
print("Enter rate of commission: ")
local commissionRate = tonumber(io.read())

local commission = salesAmount * (commissionRate / 100)
print("Commission: " .. commission)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua script interacts with the user to calculate a sales commission. It prompts the user to input the sales amount and rate of commission using `io.read()` and `tonumber()`. The code then calculates the commission by multiplying the sales amount with the commission rate divided by 100. Finally, the program prints the calculated commission using `"Commission: " .. commission`, indicating the amount earned based on the sales and commission rate provided.
''',
"e": ""
},
{
"no": 143,
"q":
"Write a program to print all odd numbers from 1 to 100 also print its sum",
"a": '''
local sum = 0

for i = 1, 100, 2 do
   print(i)
   sum = sum + i
end

print("Sum of odd numbers: " .. sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the sum of odd numbers from 1 to 100. It initializes a variable `sum` to 0. Then, using a loop that starts from 1 and increments by 2 in each iteration, it prints each odd number and adds it to the `sum`. After the loop finishes, the code prints the calculated sum of odd numbers using `"Sum of odd numbers: " .. sum`, demonstrating the total accumulation of odd numbers within the specified range.
''',
"e": ""
},
{
"no": 144,
"q":
"Write a program to enter any three strings and print the longest one",
"a": '''
   -- Function to find the longest string
function findLongestString(str1, str2, str3)
    local longest = str1
    if #str2 > #longest then
        longest = str2
    end
    if #str3 > #longest then
        longest = str3
    end
    return longest
end

-- Main program
print("Enter three strings:")
local str1 = io.read()
local str2 = io.read()
local str3 = io.read()
local longestString = findLongestString(str1, str2, str3)
print("The longest string is:", longestString)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function named `findLongestString` that takes three string inputs, `str1`, `str2`, and `str3`. The function compares the lengths of these strings using the `#` operator and assigns the longest string to the variable `longest`. It then returns the `longest` string. In the main program, the user is prompted to input three strings. The program then calls the `findLongestString` function with the provided strings and prints out the longest string among the three entered strings. This code determines and displays the longest string from the input set using the defined function.
''',
"e": ""
},
{
"no": 145,
"q": "Write a program to print all even numbers from 2 to 100",
"a": '''
   for i = 2, 100, 2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation": '''This Lua code uses a loop to print even numbers from 2 to 100. It starts the loop with an initial value of 2 and increments it by 2 in each iteration until it reaches or exceeds 100. During each iteration, the code prints the current value of `i`, which represents an even number. This loop effectively generates and displays all even numbers between 2 and 100.
''',
"e": " "
},
{
"no": 146,
"q":
"Write a program to ask any string and count total no. of vowels consonants words and sentences",
"a": '''
print("Enter a string: ")
local inputString = io.read()

local vowels = 0
local consonants = 0
local words = 0
local sentences = 0

for word in inputString:gmatch("%S+") do
   words = words + 1
   for _, char in ipairs({ "a", "e", "i", "o", "u", "A", "E", "I", "O", "U" }) do
       if word:find(char) then
           vowels = vowels + 1
           break
       end
   end
   consonants = consonants + #word - vowels
end

sentences = select(2, inputString:gsub("[.!?]", ""))

print("Vowels: " .. vowels)
print("Consonants: " .. consonants)
print("Words: " .. words)
print("Sentences: " .. sentences)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a string. It initializes counters for vowels, consonants, words, and sentences. The script uses a loop to iterate through words in the input string, identified by the `%S+` pattern using `gmatch()`. For each word, it counts words, then checks each character for vowels. If a vowel is found, it increments the vowel count and subtracts it from the consonant count. The loop calculates sentence count by using `select(2, inputString:gsub("[.!?]", ""))` to count sentence-ending punctuations.

Finally, the program displays the counts of vowels, consonants, words, and sentences. This code essentially evaluates and reports the linguistic composition of the input string.
''',
"e": ""
},
{
"no": 147,
"q":
"Write a program to generate the following series 11  3  14  17  31…………18th term",
"a": '''
    local series = {11, 3}
for i = 3, 18 do
   if i % 2 == 1 then
       series[i] = series[i - 1] + series[i - 2]
   else
       series[i] = series[i - 1] + 3
   end
end

print("18th term of the series: " .. series[18])
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua script generates a sequence of numbers. It initializes a table named `series` with the first two terms as 11 and 3. A loop runs from 3 to 18. During each iteration, if the index `i` is odd, the next term is calculated by adding the previous two terms in the series. If `i` is even, it adds 3 to the last term to maintain the pattern. Finally, the code prints the 18th term of the series using `series[18]`, showcasing the value at that position in the sequence.
''',
"e": " ",
"category": "series"
},
{
"no": 148,
"q":
"Write a program to print sum of cube of any three ask numbers",
"a": '''
  -- Main program
print("Enter three numbers:")
local num1 = tonumber(io.read())
local num2 = tonumber(io.read())
local num3 = tonumber(io.read())

local sumOfCubes = num1^3 + num2^3 + num3^3
print("Sum of cubes:", sumOfCubes)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code is a program that calculates the sum of the cubes of three given numbers. In the main program, the user is prompted to input three numbers. These input numbers are then read and converted to numerical values using the `tonumber()` function and stored in the variables `num1`, `num2`, and `num3`. The code proceeds to calculate the sum of the cubes of these three numbers by raising each number to the power of 3 (`^3`) and adding them together. The result, representing the sum of cubes, is printed to the console using the statement "Sum of cubes: result". Essentially, this code efficiently calculates and displays the sum of the cubes of the provided three numbers.
''',
"e": " "
},
{
"no": 149,
"q":
"Write a program to enter any 10 numbers and sort in ascending order",
"a": '''
   local numbers = {}
for i = 1, 10 do
   print("Enter number " .. i .. ": ")
   local num = tonumber(io.read())
   table.insert(numbers, num)
end

table.sort(numbers)

print("Sorted numbers:")
for _, num in ipairs(numbers) do
   print(num)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program gathers 10 numeric inputs from the user, stores them in a table, and then sorts and displays them in ascending order. It utilizes a `for` loop to input and insert the numbers into the `numbers` table. Subsequently, the script sorts the numbers using `table.sort()` and exhibits the sorted sequence through another loop, satisfying the requested functionality.
''',
"e": " "
},
{
"no": 150,
"q":
"Write a program to ask number and check whether the given number is composite or not",
"a": '''
    print("Enter a number: ")
local num = tonumber(io.read())

local isComposite = false
for i = 2, math.floor(math.sqrt(num)) do
   if num % i == 0 then
       isComposite = true
       break
   end
end

if isComposite then
   print(num .. " is a composite number.")
else
   print(num .. " is not a composite number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua script prompts the user to input a number, which is then converted into a numeric value using `tonumber()`. The code initializes a boolean variable `isComposite` as `false`.

A `for` loop iterates from 2 up to the square root of the input number using `math.floor(math.sqrt(num))` as the upper limit. During each iteration, it checks if the number is divisible by `i` (the loop variable). If a divisor is found (`num % i == 0`), it sets `isComposite` to `true` and breaks out of the loop.

Finally, the program prints whether the input number is composite or not based on the value of `isComposite`, indicating whether the number has divisors other than 1 and itself.
''',
"e": ""
},
{
"no": 151,
"q":
"Write a program to enter any three strings and print the shortest one",
"a": '''
    local strings = {}
for i = 1, 3 do
   print("Enter string " .. i .. ": ")
   local str = io.read()
   table.insert(strings, str)
end

local shortest = strings[1]
for _, str in ipairs(strings) do
   if #str < #shortest then
       shortest = str
   end
end

print("Shortest string: " .. shortest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code initializes an empty table named `strings`. It then enters a loop that prompts the user to input three strings, one by one. The captured strings are added to the `strings` table using `table.insert()`.

After collecting the strings, the program identifies the shortest string by iterating through the `strings` table with the `ipairs()` iterator. It compares the length of each string to the length of the current shortest string and updates `shortest` if a shorter string is found.

Finally, the code prints the shortest string among the entered strings using `"Shortest string: " .. shortest`.
''',
"e": " ",
"f": " "
},
{
"no": 152,
"q":
"Write a program to ask number and find product of odd digits",
"a": '''
    print("Enter a number: ")
local num = tonumber(io.read())

local product = 1
while num > 0 do
   local digit = num % 10
   if digit % 2 == 1 then
       product = product * digit
   end
   num = math.floor(num / 10)
end

print("Product of odd digits: " .. product)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua script prompts the user to input a number, which it then converts into a numeric value using `tonumber()`. The code initializes a variable `product` to 1. It uses a `while` loop to process each digit of the number: during each iteration, the last digit is obtained using the modulo operation `%`. If the digit is odd (with `% 2 == 1`), its value is multiplied into the `product`. Afterward, the last digit is removed from the number by integer division. Once all digits are processed, the code prints the calculated product of odd digits using `"Product of odd digits: " .. product`.
''',
"e": ""
},
{
"no": 153,
"q": "Write a program TO ENTER ANY DIGIT AND PRINT EVEN DIGITS",
"a": '''
   print("Enter a number: ")
local num = io.read()

print("Even digits:")
for digit in num:gmatch("%d") do
   if tonumber(digit) % 2 == 0 then
       print(digit)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number. It captures the input using `io.read()`. The program then employs a loop with the `gmatch` function and the pattern `"%d"` to iterate through each digit of the input number. Inside the loop, it checks if the current digit is even by converting it to a number and checking if the remainder after division by 2 is 0. If the condition is met, it prints the even digit. This code effectively identifies and displays the even digits present in the entered number.
''',
"e": ""
},
{
"no": 154,
"q": "Write a program to ask number and find sum of even digits",
"a": '''
    print("Enter a number: ")
local num = tonumber(io.read())

local sum = 0
while num > 0 do
   local digit = num % 10
   if digit % 2 == 0 then
       sum = sum + digit
   end
   num = math.floor(num / 10)
end

print("Sum of even digits: " .. sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number. It then converts the input to a numeric value using `tonumber()`. The code initializes a variable `sum` to 0. A `while` loop processes each digit of the number: in each iteration, it calculates the last digit using the modulo operation `%`, checks if it's even using `% 2 == 0`, and if true, adds it to the `sum`. Then, it removes the last digit by integer division. After processing all digits, the program outputs the sum of even digits using `"Sum of even digits: " .. sum`.
''',
"e": ""
},
{
"no": 155,
"q":
"Write a program to print the sum of the numbers between 3 to 30",
"a": '''
  local sum = 0
for i = 3, 30 do
   sum = sum + i
end

print("Sum of numbers between 3 and 30: " .. sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua script calculates the sum of numbers between 3 and 30. It initializes a variable `sum` to 0. Using a loop, it iterates through numbers from 3 to 30 inclusively, adding each number to the `sum`. After the loop completes, the code prints the calculated sum using `"Sum of numbers between 3 and 30: " .. sum`, revealing the total accumulation of numbers in the specified range.
''',
"e": " "
},
{
"no": 156,
"q": "Write a program to generate 7  22  11  34……………19th terms",
"a": '''
   local series = {7, 22}
for i = 3, 19 do
   if i % 2 == 1 then
       series[i] = series[i - 1] + series[i - 2]
   else
       series[i] = series[i - 1] + 12
   end
end

print("19th term of the series: " .. series[19])
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a sequence of numbers. It initializes a table named `series` with the first two terms as 7 and 22. Then, it uses a loop to calculate subsequent terms from the 3rd to the 19th. If the index `i` is odd, the next term is computed by adding the previous two terms in the series. If `i` is even, it adds 12 to the last term to maintain the sequence. Finally, the code prints the 19th term using `series[19]`, revealing the computed value in the sequence.
''',
"e": "",
"category": "series"
},
{
"no": 157,
"q":
"Write a program to generate the series 10  12  15  19…………..14th terms",
"a": '''
   local series = {10}
local term = 12
local diff = 2

for i = 2, 14 do
   series[i] = series[i - 1] + term
   term = term + diff
   diff = diff + 1
end

print("14th term of the series: " .. series[14])
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program generates a numerical series. It initializes a series table with the first term as 10 and increments each subsequent term by a value initially set to 12, increasing by 2 after each term. The loop runs for 13 iterations, populating the series. The script then outputs the 14th term using the `series[14]` index, demonstrating the calculated progression of the series through iterative addition and incrementing of terms.
''',
"e": " ",
"category": "series"
},
{
"no": 158,
"q":
"Write a program ito ask any string and check whether the first character of a ask string is alphabet number or symbol",
"a": '''
   print("Enter a string: ")
local inputString = io.read()

local firstChar = inputString:sub(1, 1)

if firstChar:match("%a") then
   print("First character is an alphabet.")
elseif firstChar:match("%d") then
   print("First character is a number.")
else
   print("First character is a symbol.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code requests the user to provide a string input. It captures the input using `io.read()`. The script then extracts the first character of the input string using `sub(1, 1)`. It uses pattern matching with `match("%a")` to check if the first character is an alphabet letter, and if so, it prints "First character is an alphabet." If it matches `%d`, the program prints "First character is a number." If neither pattern matches, it prints "First character is a symbol." This code determines the type of the first character in the input string.
''',
"e": " "
},
{
"no": 159,
"q": "Write a program to ask any string and reverse it",
"a": '''
print("Enter a string: ")
local inputString = io.read()

local reversedString = inputString:reverse()

print("Reversed string: " .. reversedString)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a string. It then uses the `io.read()` function to capture the input. The program employs the `reverse()` method to invert the order of characters in the string. Finally, the script outputs the reversed string by concatenating it with the message "Reversed string: " using the `..` operator.
''',
"e": " "
},
{
"no": 160,
"q":
"Write a program to enter any 10 numbers and sort in descending order",
"a": '''
      local numbers = {}
for i = 1, 10 do
   print("Enter number " .. i .. ": ")
   local num = tonumber(io.read())
   table.insert(numbers, num)
end

table.sort(numbers, function(a, b) return a > b end)

print("Sorted numbers in descending order:")
for _, num in ipairs(numbers) do
   print(num)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation": '''This Lua script collects 10 numbers from the user, stores them in a table, then sorts and prints them in descending order. It uses a loop to input numbers, `tonumber()` for conversion, and `table.sort()` with a custom comparison to sort. The program displays the sorted numbers in descending sequence via a final loop, achieving the requested functionality.
''',
"e": ""
},
{
"no": 161,
"q":
"Write a program to ask number and find sum of cube of even digits",
"a": '''
     print("Enter a number: ")
local num = tonumber(io.read())

local sum = 0
while num > 0 do
   local digit = num % 10
   if digit % 2 == 0 then
       sum = sum + digit^3
   end
   num = math.floor(num / 10)
end

print("Sum of cube of even digits: " .. sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number. It converts the input into a numeric value using `tonumber()`. Then, it enters a `while` loop to process the individual digits of the number. In each iteration, it extracts the last digit using the modulo operation `%` and assigns it to the variable `digit`. The code checks if the digit is even by verifying if its remainder when divided by 2 is 0. If the condition is met, the cube of the even digit is computed using `digit^3`, and its value is added to the `sum` variable. The last digit is then removed from the number using integer division. This process continues until all digits are processed. Finally, the program prints the calculated sum of the cubes of even digits.
''',
"e": " ",
"f": " "
},
{
"no": 162,
"q": "Write a program TO ENTER ANY DIGIT AND PRINT ODD DIGITS  ",
"a": '''
    print("Enter a number: ")
local num = io.read()

print("Odd digits:")
for digit in num:gmatch("%d") do
   if tonumber(digit) % 2 == 1 then
       print(digit)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts the user to input a number. It then iterates through each digit of the input number using the `gmatch` function and a pattern matching `%d`, which captures digits. For each digit, the code checks if it is odd by converting it to a number and checking if the remainder after division by 2 is 1. If the digit is odd, it's printed. The code essentially identifies and displays the odd digits present in the entered number.
''',
"e": " ",
"f": " "
},
{
"no": 163,
"q":
"Write a program to enter any three numbers and display the greatest one.",
"a": '''
print("Enter three numbers: ")
local num1 = tonumber(io.read())
local num2 = tonumber(io.read())
local num3 = tonumber(io.read())

local greatest = num1
if num2 > greatest then
   greatest = num2
end
if num3 > greatest then
   greatest = num3
end

print("The greatest number is: " .. greatest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program takes three numbers from the user and identifies the greatest among them. After input, it initializes a variable with the first number and compares the remaining two numbers with it. If either of the latter numbers is greater, the variable is updated accordingly. Ultimately, the code displays the greatest number among the three using the statement "The greatest number is: " followed by the determined value. This process effectively determines and presents the largest value among the provided input numbers.
''',
"e": ""
},
{
"no": 164,
"q":
"Write a program to ask any string and count total no. of vowels consonants and words",
"a": '''
    print("Enter a string: ")
local inputString = io.read()

local vowels, consonants, words = 0, 0, 0

for word in inputString:gmatch("%S+") do
   words = words + 1
   for char in word:gmatch(".") do
       if char:match("[%a]") then
           if char:match("[aeiouAEIOU]") then
               vowels = vowels + 1
           else
               consonants = consonants + 1
           end
       end
   end
end

print("Vowels: " .. vowels)
print("Consonants: " .. consonants)
print("Words: " .. words)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code takes a string input from the user and analyzes its linguistic composition. It counts the number of vowels and consonants by iterating through the characters of each word. The total count of words is determined by using the `%S+` pattern. The code then displays the vowel count, consonant count, and word count. By employing these processes, the code effectively provides insights into the vowel, consonant, and word distribution within the input string.
''',
"e": ""
},
{
"no": 165,
"q":
"Write a program that reads six numbers from the list and prints sum of those numbers. The list of number contains: 9  6  93  25 12 8",
"a": '''
local numbers = {9, 6, 93, 25, 12, 8}
local sum = 0

for _, num in ipairs(numbers) do
   sum = sum + num
end

print("Sum of numbers: " .. sum)
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code calculates the sum of numbers from a given list. It initializes a table named `numbers` containing the provided values. The code then iterates through the `numbers` table using the `ipairs()` iterator. In each iteration, it adds the current number to the running sum. After processing all the numbers, the code prints the calculated sum using `"Sum of numbers: " .. sum`, providing the total sum of the numbers in the list.
''',
"e": ""
},
{
"no": 166,
"q":
"Write a program to generate the series 2  2  4  6  10…………13th term",
"a": '''
    local series = {2, 2}
for i = 3, 13 do
   if i % 2 == 1 then
       series[i] = series[i - 1] + series[i - 2]
   else
       series[i] = series[i - 1] + 2
   end
end

print("13th term of the series: " .. series[13])
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers. It initializes a table named `series` with the first two terms as 2 and 2. Then, using a loop that starts from the 3rd term and goes up to the 13th term, it fills in the remaining terms in the series. If the index `i` is odd, the next term is calculated by adding the previous two terms. If `i` is even, it adds 2 to the last term. Finally, the code prints the 13th term of the series using `series[13]`, which displays the value at that position in the sequence.
''',
"e": " ",
"category": "series"
},
{
"no": 167,
"q":
"Write a program to generate the following series 13579   1357   135   13   1",
"a": '''
local term = 13579

for i = 5, 1, -1 do
   print(term)
   term = term / 10
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers. It starts with the term 13579 and uses a loop that counts from 5 to 1 in decreasing order. In each iteration, the current value of `term` is printed, and then it is divided by 10. This division effectively removes the last digit from `term` in each iteration, generating a sequence where digits are gradually removed from the end. The code outputs this series of numbers.
''',
"e": "",
"category": "series"
},
{
"no": 168,
"q":
"Write a program to print numbers 30   28.5   27   25.5……   9th terms",
"a": '''
local term = 30
local diff = 1.5

for i = 1, 9 do
   print(term)
   term = term - diff
   diff = diff + 1.5
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers. It initializes `term` as 30 and `diff` as 1.5. A loop runs 9 times, during which it prints the current value of `term`. Then, it subtracts `diff` from `term` and increments `diff` by 1.5. This process is repeated for each iteration, resulting in the series where each term is reduced by 1.5, and the difference between consecutive terms increases by 1.5. The code outputs this sequence of numbers.
''',
"e": " ",
"category": "series"
},
{
"no": 169,
"q": "Write a program to print first 5 Armstrong numbers",
"a": '''
local function isArmstrong(num)
   local sum = 0
   local temp = num
   local numDigits = math.floor(math.log10(num)) + 1
  
   while num > 0 do
       local digit = num % 10
       sum = sum + digit^numDigits
       num = math.floor(num / 10)
   end
  
   return sum == temp
end

local count = 0
local num = 1

while count < 5 do
   if isArmstrong(num) then
       print(num)
       count = count + 1
   end
   num = num + 1
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code checks for Armstrong numbers, which are numbers where the sum of their digits, each raised to the power of the digit count, equals the original number. The `isArmstrong()` function evaluates this property. The script initializes a counter `count` and starts examining numbers. When it identifies 5 Armstrong numbers, it stops. The found Armstrong numbers are printed. This code effectively generates and displays the first 5 Armstrong numbers using the defined function and a loop.
''',
"e": " "
},
{
"no": 170,
"q":
"Write a program to ask string and find whether the first character is a number or uppercase or lowercase   ",
"a": '''
     print("Enter a string: ")
local inputString = io.read()

local firstChar = inputString:sub(1, 1)

if firstChar:match("%d") then
   print("First character is a number.")
elseif firstChar:match("%u") then
   print("First character is an uppercase letter.")
elseif firstChar:match("%l") then
   print("First character is a lowercase letter.")
else
   print("First character is not a number or letter.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation": '''This Lua script prompts for a string input using `io.read()`. It extracts the first character using `sub(1, 1)`. By comparing the first character to different patterns, the code identifies its nature. If it matches `%d`, the code confirms it's a number. If it matches `%u`, it's an uppercase letter. If it matches `%l`, it's a lowercase letter. If none of these patterns match, it determines that the character isn't a number or letter. The script then prints a relevant message based on the type of the first character.
''',
"e": " "
},
{
"no": 171,
"q":
"Write a program to count the frequency of characters R or S present in the supplied string  ",
"a": '''
    print("Enter a string: ")
local inputString = io.read()

local frequency = 0
for char in inputString:gmatch("[RS]") do
   frequency = frequency + 1
end

print("Frequency of 'R' and 'S': " .. frequency)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code prompts for a string input and counts the occurrences of characters 'R' and 'S' using the `gmatch` function and the pattern `"[RS]"`. The matched characters increment the `frequency` counter. The final frequency count is printed with the message "Frequency of 'R' and 'S': ". This code accurately determines and displays the frequency of 'R' and 'S' characters in the given input string.
''',
"e": ""
},
{
"no": 172,
"q":
"Write a program to generate the following series 123456789   1234567   12345   123   1",
"a": '''
local term = 123456789

for i = 5, 1, -1 do
   print(term)
   term = term / 10^((5 - i) * 2)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code generates a series of numbers by starting with the term 123456789. It uses a loop that counts from 5 to 1 in decreasing order. In each iteration, the current value of `term` is printed. The code then divides the `term` by 10 raised to the power of the difference between 5 and the current iteration index, multiplied by 2. This process effectively removes a certain number of digits from the end of the `term` in each iteration, creating a cascading effect. As a result, it generates a series of numbers where digits are gradually removed from the end in each term.
''',
"e": " ",
"f": " ",
"category": "series"
},
{
"no": 173,
"q": "Write a program to print cube of an ask number ",
"a": '''
 print("Enter a number:")
local num = io.read("*n")
local cube = num * num * num
print("The cube of", num, "is", cube)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number. After reading the input as a numeric value using `io.read("*n")`, it calculates the cube of the entered number by multiplying it by itself three times (`num * num * num`). The result is stored in the variable `cube`. Finally, the code prints the calculated cube of the number using the message "The cube of" followed by the entered number and "is", and then the calculated cube value. This code provides a simple way to calculate and display the cube of a given number.
''',
"e": ""
},
{
"no": 174,
"q": "Write a program to ask number and find sum of digits",
"a": '''
     print("Enter a number:")
local num = io.read("*n")
local sum = 0

while num > 0 do
   local digit = num % 10
   sum = sum + digit
   num = math.floor(num / 10)
end

print("Sum of digits:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number. After reading the input as a numeric value using `io.read("*n")`, it calculates the sum of the digits in the given number using a loop. Within the loop, the code repeatedly divides the number by 10 to extract the last digit using the modulo operation (`num % 10`). It then adds the extracted digit to the `sum` variable. After processing all the digits, the code prints the sum of the digits using the message "Sum of digits:" followed by the calculated sum. This code effectively computes and displays the sum of the individual digits within the entered number.
''',
"e": ""
},
{
"no": 175,
"q":
"Write a program to input any number and check whether the given no. is divisible by 3 and 7 or not.",
"a": '''
   print("Enter a number:")
local num = io.read("*n")

if num % 3 == 0 and num % 7 == 0 then
   print(num, "is divisible by both 3 and 7")
else
   print(num, "is not divisible by both 3 and 7")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number. After reading the input as a numeric value using `io.read("*n")`, it checks if the entered number is divisible by both 3 and 7. It does this by calculating the remainders when dividing the number by 3 and 7, respectively. If both remainders are 0, the code prints a message indicating that the number is divisible by both 3 and 7. Otherwise, it prints a message indicating that the number is not divisible by both 3 and 7. This code offers a straightforward way to determine whether a given number satisfies the divisibility conditions for both 3 and 7.
''',
"e": ""
},
{
"no": 176,
"q":
"Write a program to ask any string and count total no. of sentences  ",
"a": '''
   print("Enter a string:")
local str = io.read()

local sentences = 0
for _ in str:gmatch("[^.!?]+") do
   sentences = sentences + 1
end

print("Total number of sentences:", sentences)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a string. After reading the input using `io.read()`, it uses a loop to count the total number of sentences in the given string. It does this by applying a pattern matching function, `gmatch`, on the string with the pattern "[^.!?]+" to capture sequences of characters that do not contain sentence-ending punctuation. During each iteration, the loop increments the `sentences` count. Finally, the code prints the total number of sentences using the message "Total number of sentences:" followed by the calculated count. This code provides an effective way to quickly count and display the number of sentences in a provided string.
''',
"e": " "
},
{
"no": 177,
"q":
"Write a program to generate the following series 2   4   6   8…………12th term",
"a": '''
     for i = 2, 24, 2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of even numbers using a loop. It starts from 2 and increments by 2 in each iteration, stopping at 24. During each iteration, the code prints the current value of `i`, resulting in a series of even numbers from 2 to 24. This code showcases a simple method to generate and display a sequence of even numbers with a consistent interval between consecutive terms.
''',
"e": "",
"category": "series"
},
{
"no": 178,
"q":
"Write a program TO PRINT MULTIPLICATION TABLE OF A GIVEN NUMBER",
"a": '''
   print("Enter a number:")
local num = io.read("*n")

for i = 1, 10 do
   local result = num * i
   print(num, "x", i, "=", result)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number. After reading the input as a numeric value using `io.read("*n")`, it uses a loop to calculate the multiplication table for the entered number. During each iteration, the code calculates the product of the input number and the loop variable `i`. It then prints the multiplication expression and the result using the format "num x i = result". This loop iterates 10 times, generating and displaying the multiplication table for the given number from 1 to 10. This code provides a quick way to view the multiplication table of a chosen number.
''',
"e": " "
},
{
"no": 179,
"q": "Write a program using to print first 19 even numbers",
"a": '''
  for i = 2, 38, 2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of even numbers using a loop. It starts from 2 and increments by 2 in each iteration, ending at 38. During each iteration, it prints the current value of `i`, resulting in a series of even numbers from 2 to 38. This code provides a simple and efficient way to generate and display a sequence of even numbers with a constant difference between consecutive terms.
''',
"e": " "
},
{
"no": 180,
"q": "Write a program to generate the series 1   8   27……………8th",
"a": '''
for i = 1, 8 do
   local term = i * i * i
   print(term)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of numbers using a loop. It starts from 1 and iterates up to 8. During each iteration, it calculates the cube of the current value of `i` by multiplying it by itself twice (`i * i * i`). The result is stored in the variable `term`, representing the current term of the sequence. The code then prints each calculated term, resulting in a sequence of cubes from 1^3 to 8^3. This approach showcases the generation of a sequence of numbers with each term being the cube of its position in the sequence.
''',
"e": " ",
"category": "series"
},
{
"no": 181,
"q":
"Write a program to print all even numbers from 2 to 100 in descending orde",
"a": '''
for i = 100, 2, -2 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a sequence of numbers in descending order using a loop. It begins with the number 100 and decreases by 2 in each iteration. The loop prints the current value of `i` during each iteration, resulting in a series of even numbers from 100 down to 2. This code demonstrates a straightforward approach to creating and displaying a sequence of numbers with a decreasing pattern.
''',
"e": " ",
"f": " "
},
{
"no": 182,
"q":
"Write a program to ask any string and count total no. of consonants",
"a": '''
   print("Enter a string:")
local str = io.read()

local consonants = 0
for char in str:gmatch("[%a]") do
   local lowerChar = char:lower()
   if lowerChar ~= "a" and lowerChar ~= "e" and lowerChar ~= "i" and lowerChar ~= "o" and lowerChar ~= "u" then
       consonants = consonants + 1
   end
end

print("Total number of consonants:", consonants)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a string and counts the total number of consonants in the given string. It reads the input using `io.read()`. Then, it iterates through each alphabetic character in the input string using the `gmatch` function and a character class `[%a]` to match only alphabetic characters. During each iteration, it converts the character to lowercase and checks if it's a consonant by comparing it to the vowels "a," "e," "i," "o," and "u." If the character is not a vowel, it increments the `consonants` count.

After processing all characters, the code prints the total number of consonants using the message "Total number of consonants:" followed by the calculated count. This approach quickly counts and displays the number of consonants in the provided string.
''',
"e": ""
},
{
"no": 183,
"q":
"Write a program to generate the following series 11111   1111   111   11   1 ",
"a": '''
   for i = 5, 1, -1 do
   for j = 1, i do
       io.write("1")
   end
   print()
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a pattern using nested loops. It employs an outer loop that starts from 5 and decrements down to 1. Within each iteration of the outer loop, an inner loop runs a certain number of times determined by the current value of the outer loop variable. During each inner loop iteration, the code prints the digit "1" using `io.write("1")`. After the inner loop completes, the code moves to the next line using `print()` to create a new row in the pattern. This code results in a pattern where each row consists of a varying number of "1" digits, decreasing with each subsequent row.
''',
"e": "",
"category": "series"
},
{
"no": 184,
"q":
"Write a program to input any number and check whether the given no. is positive or negative",
"a": '''
  print("Enter a number:")
local num = io.read("*n")

if num > 0 then
   print("The number is positive.")
elseif num < 0 then
   print("The number is negative.")
else
   print("The number is zero.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number and checks its positivity or negativity. It reads the input as a numeric value using `io.read("*n")`, then uses conditional statements (`if`, `elseif`, and `else`) to determine the sign of the number. If the number is greater than zero, it's considered positive; if it's less than zero, it's considered negative; and if it's exactly zero, the code identifies it as such. The code then prints an appropriate message based on the outcome, indicating whether the entered number is positive, negative, or zero. This code offers a straightforward way to classify and inform about the sign of a given number.
''',
"e": ""
},
{
"no": 185,
"q":
"Write a program to generate the following series 2   3   5   8   13…………10th term",
"a": '''
    local n = 10
local series = {2, 3}

for i = 3, n do
   series[i] = series[i - 1] + series[i - 2]
end

for i = 1, n do
   print(series[i])
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a series of numbers using the Fibonacci sequence. It initializes an array `series` with the first two terms (2 and 3) and then calculates the subsequent terms using a loop. Each term is the sum of the previous two terms. The program then prints the first 10 terms of the generated series using a loop. This approach showcases the Fibonacci sequence generation and displays the resulting series, providing insight into the pattern of numbers produced by this mathematical sequence.
''',
"e": " ",
"category": "series"
},
{
"no": 186,
"q":
"Write a program TO ENTER ANY DIGIT AND PRINT SQUARE OF EVEN DIGITS",
"a": '''
     print("Enter a number:")
local num = io.read("*n")

local function isEven(n)
   return n % 2 == 0
end

local squareSum = 0
while num > 0 do
   local digit = num % 10
   if isEven(digit) then
       squareSum = squareSum + digit * digit
   end
   num = math.floor(num / 10)
end

print("Sum of squares of even digits:", squareSum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code takes a user input number and calculates the sum of the squares of its even digits. It defines the `isEven` function to determine if a digit is even. The code iterates through the digits of the input number by repeatedly dividing it by 10 and extracting the remainder. If a digit is even according to `isEven`, its square is added to the accumulating `squareSum`. This process continues until the number is fully processed. Finally, the code displays the sum of the squares of even digits using the message "Sum of squares of even digits:" followed by the computed sum. This program provides a convenient method to find and sum the squares of even digits within a given number.
''',
"e": ""
},
{
"no": 187,
"q":
"Write a program to generate the following series 88888888   666666   4444   22",
"a": '''
   local num = 8
for i = 4, 1, -1 do
   for j = 1, i do
       io.write(num)
   end
   num = num - 2
   print()
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a pattern of numbers in a decreasing manner. It starts with the number 8 and then reduces it by 2 in each iteration. The outer loop runs 4 times, and in each iteration, an inner loop prints the current value of `num` a certain number of times (ranging from 4 to 1). After printing the required number of times, the code reduces `num` by 2 and moves to the next iteration, creating a pattern of decreasing numbers. Each iteration of the outer loop adds a new line for the pattern.
''',
"e": " ",
"category": "series"
},
{
"no": 188,
"q":
"Write a program to print sum of square of any three ask numbers",
"a": '''
    print("Enter three numbers:")
local num1 = io.read("*n")
local num2 = io.read("*n")
local num3 = io.read("*n")

local sumOfSquares = num1 * num1 + num2 * num2 + num3 * num3
print("Sum of squares:", sumOfSquares)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input three numbers. It reads these numbers as numeric values using `io.read("*n")`. Then, it calculates the sum of the squares of the three numbers by squaring each number individually and adding them together. The result is stored in the variable `sumOfSquares`. Finally, the code prints the sum of the squares with the message "Sum of squares:" followed by the calculated value. This approach computes the sum of the squares of three provided numbers, offering a quick way to obtain this mathematical result.
''',
"e": " "
},
{
"no": 189,
"q":
"Write a program to ask any string and check whether the given string is palindrome or not",
"a": '''
    print("Enter a string:")
local str = io.read()

local function isPalindrome(s)
   s = s:lower()
   s = s:gsub("[%s%p]", "")
   local reversed = s:reverse()
   return s == reversed
end

if isPalindrome(str) then
   print("The string is a palindrome.")
else
   print("The string is not a palindrome.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a string. After reading the input, it defines a function called `isPalindrome` that checks whether a string is a palindrome. The function makes the string lowercase, removes spaces and punctuation using `gsub`, and then compares it to its reversed version. If they match, the input string is a palindrome and the code prints a corresponding message. Otherwise, it prints that the string is not a palindrome. This code offers a way to quickly determine if a given string reads the same forwards and backwards, considering case and removing unnecessary characters.
''',
"e": " "
},
{
"no": 190,
"q":
"Write a program to input a year and display whether that year is a leap year or not.",
"a": '''
    print("Enter a year:")
local year = io.read("*n")

if (year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0) then
   print(year, "is a leap year.")
else
   print(year, "is not a leap year.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user for a year and checks if it's a leap year. If the year is divisible by 4 but not by 100, or if it's divisible by 400, it's a leap year. The code then prints whether the entered year is a leap year or not. This approach quickly determines leap years by evaluating their divisibility, providing an easy way to identify whether a given year aligns with leap year rules.
''',
"e": ""
},
{
"no": 191,
"q":
"Write a program to print all natural numbers from 1 to 100 also print its sum",
"a": '''
   local sum = 0
for i = 1, 100 do
   print(i)
   sum = sum + i
end

print("Sum of natural numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code initializes a variable `sum` to zero. It then utilizes a loop to iterate through the numbers from 1 to 100. During each iteration, the loop prints the current number using `print(i)` and accumulates the number into the `sum` variable using `sum = sum + i`. This process adds up all the natural numbers from 1 to 100. After the loop completes, the code prints the total sum of these natural numbers using `print("Sum of natural numbers:", sum)`. In this way, the code calculates and displays the sum of the first 100 natural numbers.
''',
"e": " ",
"f": " "
},
{
"no": 192,
"q":
"Write a program to convert hexadecimal number to decimal number",
"a": '''
    print("Enter a hexadecimal number:")
local hex = io.read()

local decimal = tonumber(hex, 16)
print("Decimal equivalent:", decimal)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code takes user input for a hexadecimal number using `io.read()`. It then converts the hexadecimal input into its decimal equivalent using `tonumber(hex, 16)`, where `16` indicates hexadecimal base. The resulting decimal value is stored in the `decimal` variable. Finally, the code displays the decimal equivalent with the message "Decimal equivalent:" followed by the calculated decimal value. This conversion allows users to quickly transform hexadecimal numbers into their corresponding decimal representation for further processing or understanding.
''',
"e": ""
},
{
"no": 193,
"q":
"Write a program to input the age of a person and find out whether the person is eligible to drive or not.",
"a": '''
    print("Enter your age:")
local age = io.read("*n")

if age >= 18 then
   print("You are eligible to drive.")
else
   print("You are not eligible to drive.")
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code checks whether a person is eligible to drive based on their age. After prompting the user to input their age and reading it as a numeric value using `io.read("*n")`, the code uses a conditional statement (`if` and `else`) to compare the entered age with 18. If the age is greater than or equal to 18, the code prints "You are eligible to drive." Otherwise, it prints "You are not eligible to drive." This code effectively determines driving eligibility based on age and provides an informative response accordingly.
''',
"e": ""
},
{
"no": 194,
"q":
"Write a program to enter any 20 numbers and display the greatest one using array.",
"a": '''
   local numbers = {}
for i = 1, 20 do
   print("Enter number", i)
   numbers[i] = io.read("*n")
end

local max = numbers[1]
for i = 2, 20 do
   if numbers[i] > max then
       max = numbers[i]
   end
end

print("The greatest number is:", max)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code collects 20 user-input numbers into an array and identifies the greatest among them. Through a loop, it prompts for each input and stores them. It initializes the maximum value as the first input, then iterates through the array, updating the maximum if a larger value is found. The result, the largest value, is displayed with "The greatest number is:" message. This program efficiently captures and compares a set of numbers to determine and present the greatest value among them.
''',
"e": ""
},
{
"no": 195,
"q": "Write a program TO PRINT L.C.M OF A GIVEN ANY TWO NUMBERS",
"a": '''
   function gcd(a, b)
   while b ~= 0 do
       a, b = b, a % b
   end
   return a
end

print("Enter two numbers:")
local num1 = io.read("*n")
local num2 = io.read("*n")

local lcm = (num1 * num2) / gcd(num1, num2)
print("LCM:", lcm)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the least common multiple (LCM) of two numbers using the greatest common divisor (GCD) method. It defines a function `gcd(a, b)` that calculates the greatest common divisor of two numbers using the Euclidean algorithm. The code then prompts the user to input two numbers, reading them as numeric values with `io.read("*n")`.

It proceeds to calculate the LCM by multiplying the two input numbers and dividing the result by their GCD. The result is stored in the variable `lcm`. Finally, the code prints the calculated LCM using the message "LCM:" followed by the value of `lcm`. This code effectively demonstrates how to calculate the LCM of two numbers using their GCD, providing a reliable approach to this mathematical operation.
''',
"e": " "
},
{
"no": 196,
"q":
"Write a program to enter any 10 numbers and find the sum of even numbers",
"a": '''
    local sum = 0
for i = 1, 10 do
   print("Enter number", i)
   local num = io.read("*n")
   if num % 2 == 0 then
       sum = sum + num
   end
end

print("Sum of even numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of even numbers among 10 user-input numbers. It initializes the variable `sum` to zero and uses a loop to iterate from 1 to 10. During each iteration, the code prompts the user to input a number and reads it as a numeric value using `io.read("*n")`. It then checks if the entered number is even by using the modulo operation (`num % 2 == 0`). If the number is even, its value is added to the `sum`. After processing all 10 numbers, the code prints the calculated sum of even numbers using the message "Sum of even numbers:" followed by the value of `sum`. This code efficiently computes and displays the sum of even numbers within the provided range of inputs.
''',
"e": ""
},
{
"no": 197,
"q":
"Write a program to divide a number by another number and find the quotient and remainder.",
"a": '''
   print("Enter dividend:")
local dividend = io.read("*n")
print("Enter divisor:")
local divisor = io.read("*n")

local quotient = math.floor(dividend / divisor)
local remainder = dividend % divisor

print("Quotient:", quotient)
print("Remainder:", remainder)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the quotient and remainder of dividing two numbers. It prompts the user to input a dividend and divisor, reading both as numeric values using `io.read("*n")`. Then, it calculates the quotient by performing integer division (`dividend / divisor`) and stores it in the variable `quotient`. Additionally, it calculates the remainder using the modulo operation (`dividend % divisor`) and stores it in the variable `remainder`. Finally, the code prints the calculated quotient and remainder using the messages "Quotient:" and "Remainder:", followed by the respective values. This code provides a straightforward way to compute and display the results of division in Lua.
''',
"e": " "
},
{
"no": 198,
"q":
"Write a program using to print the sum of first ten positive integers",
"a": '''
     local sum = 0
for i = 1, 10 do
   sum = sum + i
end

print("Sum of first ten positive integers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of the first ten positive integers using a loop. It initializes the variable `sum` to zero and then uses a loop to iterate from 1 to 10. During each iteration, the code adds the current value of `i` to the `sum` variable. After the loop completes, the code prints the calculated sum using the message "Sum of first ten positive integers:" followed by the value of `sum`. This code efficiently computes and displays the sum of the first ten positive integers, demonstrating a concise approach to performing this mathematical operation in Lua.
''',
"e": " "
},
{
"no": 199,
"q": "Write a program to print cube root of an ask number",
"a": '''
   print("Enter a number:")
local num = io.read("*n")

local cubeRoot = num^(1/3)
print("Cube root:", cubeRoot)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the cube root of a given number. It prompts the user to input a number, reading it as a numeric value using `io.read("*n")`. Then, it calculates the cube root of the input number by raising it to the power of `1/3`. The result is stored in the variable `cubeRoot`. Finally, the code prints the calculated cube root using the message "Cube root:" followed by the computed value. This code demonstrates a simple approach to determine the cube root of a number, providing an efficient way to perform this mathematical operation in Lua.
''',
"e": " "
},
{
"no": 200,
"q": "Write a program to convert octal number to decimal number",
"a": '''
  print("Enter an octal number:")
local octal = io.read()

local decimal = tonumber(octal, 8)
print("Decimal equivalent:", decimal)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code converts an octal number to its decimal equivalent. It prompts the user to input an octal number and reads it using `io.read()`. Then, it uses the `tonumber()` function with base `8` (octal) to convert the entered octal value to its corresponding decimal representation. The resulting decimal value is stored in the variable `decimal`. Finally, the code prints the decimal equivalent of the entered octal number using the message "Decimal equivalent:" followed by the calculated decimal value. This program provides a straightforward way to convert an octal number into its decimal form for further analysis or representation.
''',
"e": ""
},
{
"no": 201,
"q":
"Write a program to ask number and check whether the given no is prime or not",
"a": '''
    print("Enter a number:")
local num = io.read("*n")

local isPrime = true
for i = 2, math.sqrt(num) do
   if num % i == 0 then
       isPrime = false
       break
   end
end

if isPrime then
   print(num, "is a prime number.")
else
   print(num, "is not a prime number.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code checks whether an input number is prime or not. After prompting the user to input a number and reading it as a numeric value, the code initializes a boolean variable `isPrime` as `true`. It then uses a loop to iterate from 2 to the square root of the input number. Within the loop, the code checks if the number is divisible by any value in the given range. If it's divisible (i.e., the remainder of the division is 0), the code sets `isPrime` to `false` and breaks out of the loop.

After the loop, the code examines the value of `isPrime`. If it remains `true`, the input number is considered prime and a message is printed to confirm this. If `isPrime` becomes `false`, the input number is determined not to be prime and a corresponding message is printed. This code provides an efficient way to verify the primality of a given number using a loop and a mathematical property of prime numbers.
''',
"e": " ",
"f": " "
},
{
"no": 202,
"q":
"Write a program to generate the series 1   2   4   8   16… upto 10th term",
"a": '''
    local term = 1
for i = 1, 10 do
   print(term)
   term = term * 2
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a series of numbers following a pattern of doubling. It starts with `term` initialized as 1. Through a loop that runs 10 times, it prints the current value of `term` and then updates it by multiplying it by 2 in each iteration. This results in a sequence where each term is twice the value of the previous term, effectively generating powers of 2. The loop iterates, printing terms and doubling them, showcasing the pattern of exponential growth as the sequence progresses. This code demonstrates a concise way to generate and display a series based on a doubling pattern.
''',
"e": "",
"category": "series"
},
{
"no": 203,
"q": "Write a program to convert decimal number to binary number",
"a": '''
    print("Enter a decimal number:")
local decimal = io.read("*n")

local binary = ""
while decimal > 0 do
   local remainder = decimal % 2
   binary = remainder .. binary
   decimal = math.floor(decimal / 2)
end

print("Binary equivalent:", binary)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code converts a decimal number to its binary equivalent using bitwise operations and string manipulation. After obtaining a decimal input, the code iteratively calculates the binary digits by computing the remainders of division by 2 and appending them to a string. The decimal number is updated through right-shifting. The loop continues until the decimal number becomes 0. The resulting binary string represents the binary equivalent. This approach efficiently translates decimal numbers into binary form, showcasing the conversion process through a loop and bit manipulation, with the final binary value displayed at the end.
''',
"e": ""
},
{
"no": 204,
"q":
"Write a program to generate the series 50   46   41   35…………7th terms",
"a": '''
local term = 50
for i = 2, 7 do
   print(term)
   term = term - (i * 4)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints a series of terms following a specific mathematical pattern. It initializes the variable `term` as 50. Through a loop that iterates from 2 to 7, it prints the current value of `term` and then updates it by subtracting a value calculated as `i * 4`. This creates a sequence where each term is obtained by subtracting an increasing multiple of 4 from the previous term, showcasing a decreasing progression. The loop iterates, displaying terms that decrease by 8, 12, 16, and so on, as it progresses through the series. This code effectively generates and displays a series of numbers based on the provided pattern.
''',
"e": "",
"category": "series"
},
{
"no": 205,
"q":
"Write a program to generate the series 1   4   7   10…………12th terms",
"a": '''
    local term = 1
for i = 2, 12 do
   print(term)
   term = term + 3
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints a series of terms following a specific mathematical pattern. It initializes the variable `term` as 1. Then, through a loop that iterates from 2 to 12, it prints the current value of `term` and updates it by adding 3 in each iteration. This creates a sequence where each term is obtained by adding 3 to the previous term, effectively generating an arithmetic progression. The loop iterates, displaying terms that increase by 3 with each step, showcasing the pattern in the series. This code demonstrates a straightforward approach to generating and displaying arithmetic series in Lua.
''',
"e": " ",
"category": "series"
},
{
"no": 206,
"q":
"Write a program to print all palindrome numbers from 1 to 200",
"a": '''
  function isPalindrome(n)
   local str = tostring(n)
   return str == str:reverse()
end

for i = 1, 200 do
   if isPalindrome(i) then
       print(i)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints palindrome numbers from 1 to 200. It defines a function `isPalindrome(n)` that converts a number to a string and checks if it's the same when reversed. The loop runs through numbers from 1 to 200. For each number, it checks if the number is a palindrome using the `isPalindrome` function. If it is, the number is printed. This code efficiently generates and displays numbers that read the same forwards and backwards, employing a function and loop to identify and present palindrome numbers within the specified range.
''',
"e": ""
},
{
"no": 207,
"q": "Write a program to print all natural numbers from 1 to 100",
"a": '''
  for i = 1, 100 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prints the numbers from 1 to 100. It uses a loop that iterates from 1 to 100, and during each iteration, it prints the value of `i`. This loop effectively generates a sequence of numbers starting from 1 and ending at 100, showcasing each number in consecutive lines. This code offers a simple way to display a series of numbers within a specified range using a loop in Lua.
''',
"e": " "
},
{
"no": 208,
"q":
"Write a program to ask any string and print only consonants",
"a": '''
  print("Enter a string:")
local str = io.read()

for char in str:gmatch("[%a]") do
   local lowerChar = char:lower()
   if lowerChar ~= "a" and lowerChar ~= "e" and lowerChar ~= "i" and lowerChar ~= "o" and lowerChar ~= "u" then
       io.write(char)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code takes an input string and prints only its consonant characters. After prompting the user to input a string, it reads the input using `io.read()`. It then iterates through each character in the string using a pattern matching loop (`for char in str:gmatch("[%a]")`). For each character, it converts it to lowercase (`lowerChar = char:lower()`) and checks if it is not a vowel (excluding "a", "e", "i", "o", "u"). If it's not a vowel, the character is printed using `io.write(char)`.

In summary, this code effectively filters out and displays only the consonant characters from the entered string. It employs pattern matching and conditional checks to achieve this task in Lua.
''',
"e": " "
},
{
"no": 209,
"q": "Write a program to print first 15 prime numbers",
"a": '''
  function isPrime(num)
   if num <= 1 then
       return false
   end
   for i = 2, math.sqrt(num) do
       if num % i == 0 then
           return false
       end
   end
   return true
end

local count = 0
local num = 2
while count < 15 do
   if isPrime(num) then
       print(num)
       count = count + 1
   end
   num = num + 1
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code determines and prints the first 15 prime numbers. It defines a function `isPrime(num)` that evaluates if a number is prime by checking if it's greater than 1 and not divisible by smaller values. Utilizing a loop, the code increments a variable `num` starting from 2, examining each number's primality through the `isPrime` function. When 15 prime numbers are found, they are printed, and the count is incremented. This approach combines a loop and a primality-checking function to effectively generate and display prime numbers, providing an efficient method to identify such numbers.
''',
"e": " "
},
{
"no": 210,
"q":
"Write a program to generate the following series ½    2/3    ¾………15th term",
"a": '''
for i = 1, 15 do
   local term = i / (i + 1)
   print(term)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates a series of terms based on a specific mathematical pattern. It uses a loop to iterate from 1 to 15. During each iteration, it calculates the value of `term` as `i / (i + 1)`. This formula generates a sequence of fractions where each term is obtained by dividing `i` by `i + 1`. The resulting values are then printed out in each iteration of the loop, showcasing the sequence of fractions in the series. This code offers a concise way to compute and display terms of a series following a mathematical formula.
''',
"e": "",
"category": "series"
},
{
"no": 211,
"q": "Write a program to print first 20 palindrome numbers",
"a": '''
  function isPalindrome(n)
   local str = tostring(n)
   return str == str:reverse()
end

local count = 0
local num = 1
while count < 20 do
   if isPalindrome(num) then
       print(num)
       count = count + 1
   end
   num = num + 1
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints the first 20 palindrome numbers. It defines a function `isPalindrome(n)` that converts a number `n` to a string, and then compares it with its reverse to determine if it's a palindrome. The code uses a loop to find and display palindrome numbers. The loop runs until 20 palindromes are found, with the variable `count` keeping track of how many palindromes have been printed. For each iteration, the code checks if `num` is a palindrome using the `isPalindrome` function. If it is, the number is printed, and `count` is incremented. The loop continues to iterate, generating and displaying palindrome numbers. This code effectively generates a sequence of palindrome numbers using a loop and a function for palindrome checking.
''',
"e": " ",
"f": " "
},
{
"no": 212,
"q": "Write a program to ask any number and print the factors",
"a": '''
    print("Enter a number:")
local num = io.read("*n")

print("Factors of", num, "are:")
for i = 1, num do
   if num % i == 0 then
       print(i)
   end
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input a number. After reading the input as a numeric value using `io.read("*n")`, it uses a loop to find and display all the factors of the entered number. The loop iterates from 1 up to the entered number, and for each value of `i`, it checks if the number is divisible by `i` without leaving a remainder (`num % i == 0`). If the condition is met, it means that `i` is a factor of the number, and it prints the value of `i`. This code efficiently identifies and prints the factors of a given number, offering a simple approach to determining its divisors.
''',
"e": ""
},
{
"no": 213,
"q":
"Write a program to ask any word and count total no of vowels and consonants",
"a": '''
   print("Enter a word:")
local word = io.read()

local vowels, consonants = 0, 0
for char in word:gmatch("[%a]") do
   local lowerChar = char:lower()
   if lowerChar == "a" or lowerChar == "e" or lowerChar == "i" or lowerChar == "o" or lowerChar == "u" then
       vowels = vowels + 1
   else
       consonants = consonants + 1
   end
end

print("Total number of vowels:", vowels)
print("Total number of consonants:", consonants)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program solicits a user-entered word and computes the counts of vowels and consonants within it. By iterating through each character, converted to lowercase for consistency, the code distinguishes vowels ("a," "e," "i," "o," "u") and increments their counter. All other characters are assumed to be consonants and raise the consonant counter. The final output reveals the quantity of vowels and consonants. Non-alphabetical characters are ignored, and only alphabetical characters are processed. This code is a basic example of character counting and illustrates the concept of string manipulation in programming.
''',
"e": ""
},
{
"no": 214,
"q":
"Write a program to ask three angles of a triangle and determine whether a triangle is right angled triangle or not",
"a": '''
    print("Enter three angles of a triangle:")
local angle1 = io.read("*n")
local angle2 = io.read("*n")
local angle3 = io.read("*n")

if angle1 + angle2 + angle3 == 180 and (angle1 == 90 or angle2 == 90 or angle3 == 90) then
   print("It is a right-angled triangle.")
else
   print("It is not a right-angled triangle.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code determines whether a triangle is a right-angled triangle based on its angle measurements. It prompts the user to input three angles of a triangle and reads them using `io.read("*n")`. The code then checks two conditions: whether the sum of the angles is 180 degrees (a property of triangles) and whether at least one angle is 90 degrees (a characteristic of right-angled triangles). If both conditions are met, the code prints "It is a right-angled triangle." Otherwise, it prints "It is not a right-angled triangle." This code effectively identifies and communicates whether the provided angle measurements form a right-angled triangle using conditional statements and arithmetic calculations.
''',
"e": ""
},
{
"no": 215,
"q": "Write a program to print 3   6   12   24………15th terms",
"a": '''
    local term = 3
for i = 2, 15 do
   print(term)
   term = term * 2
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints a series of terms based on a specific mathematical pattern. It initializes the variable `term` as 3. Through a loop that iterates from 2 to 15, it prints the current value of `term` and updates it by multiplying it by 2 in each iteration. This creates a sequence where each term is obtained by doubling the previous term, effectively forming a geometric progression. The loop iterates, displaying terms that increase geometrically by a factor of 2, showcasing the pattern in the series. This code effectively generates and displays a series of numbers based on the provided pattern using a loop in Lua.
''',
"e": " ",
"category": "series"
},
{
"no": 216,
"q":
"Write a program to generate the series 1   5   25   125….10th terms",
"a": '''
    local term = 1
for i = 2, 10 do
   print(term)
   term = term * 5
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints a series of terms based on a specific mathematical pattern. It initializes the variable `term` as 1. Then, through a loop that iterates from 2 to 10, it prints the current value of `term` and updates it by multiplying it by 5 in each iteration. This creates a sequence where each term is obtained by multiplying the previous term by 5, effectively forming an exponential progression. The loop iterates, displaying terms that increase exponentially by a factor of 5, showcasing the pattern in the series. This code demonstrates an efficient approach to generating and displaying exponential series using a loop in Lua.
''',
"e": "",
"category": "series"
},
{
"no": 217,
"q":
"Write a program to enter any three numbers and display the middle number",
"a": '''
   print("Enter three numbers:")
local num1 = io.read("*n")
local num2 = io.read("*n")
local num3 = io.read("*n")

if (num1 >= num2 and num1 <= num3) or (num1 <= num2 and num1 >= num3) then
   print("Middle number:", num1)
elseif (num2 >= num1 and num2 <= num3) or (num2 <= num1 and num2 >= num3) then
   print("Middle number:", num2)
else
   print("Middle number:", num3)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code determines and prints the middle number among three user-provided numbers. It prompts the user to input three numbers and reads them using `io.read("*n")`. The code then uses a series of conditional checks to identify and print the middle number. It compares each number with the other two to establish their relative positions and find the number that lies between the other two. The program concludes by displaying the middle number using the message "Middle number:" followed by the identified middle value. This code efficiently identifies and presents the middle number among the three input values using a series of conditional statements.
''',
"e": " "
},
{
"no": 218,
"q":
"Write a program ENTER ANY DIGIT AND PRINT CUBE OF EVEN DIGITS",
"a": '''
   print("Enter a digit:")
local digit = io.read("*n")

local cubeSum = 0
while digit > 0 do
   local num = digit % 10
   if num % 2 == 0 then
       cubeSum = cubeSum + num * num * num
   end
   digit = math.floor(digit / 10)
end

print("Sum of cubes of even digits:", cubeSum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code calculates the sum of the cubes of the even digits within a given digit. It prompts the user to input a digit and reads it using `io.read("*n")`. The code then enters a loop that continues as long as the digit is greater than 0. During each iteration, the last digit of the digit is obtained using the modulus operator (`digit % 10`). If this digit is even (i.e., divisible by 2), its cube is added to the `cubeSum` variable. The digit is then updated by performing integer division by 10 (`math.floor(digit / 10)`), effectively removing the last digit. The loop iterates through all the digits in the number, and at the end, it displays the sum of the cubes of the even digits using the message "Sum of cubes of even digits:" followed by the calculated value of `cubeSum`. This code efficiently computes and presents the desired result by evaluating the even digits in the input digit using a loop and conditional checks.
''',
"e": " "
},
{
"no": 219,
"q":
"Write a program to enter any 10 numbers and display the greatest one.",
"a": '''
    local greatest = -math.huge
for i = 1, 10 do
   print("Enter number", i)
   local num = io.read("*n")
   if num > greatest then
       greatest = num
   end
end

print("The greatest number is:", greatest)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code identifies and prints the greatest number among 10 user-provided inputs. It initializes the variable `greatest` with a value of negative infinity (`-math.huge`). The loop iterates 10 times, asking the user to input a number during each iteration. If the entered number is greater than the current value of `greatest`, the value of `greatest` is updated with the entered number. After processing all 10 numbers, the code displays the greatest number using the message "The greatest number is:" followed by the determined value of `greatest`. This program efficiently finds and displays the greatest among the user-provided inputs using a loop and conditional checks.
''',
"e": " "
},
{
"no": 220,
"q": "Write a program TO ENTER ANY DIGIT AND PRINT SQUARE OF ODD",
"a": '''
    print("Enter a digit:")
local digit = io.read("*n")

local squareSum = 0
while digit > 0 do
   local num = digit % 10
   if num % 2 == 1 then
       squareSum = squareSum + num * num
   end
   digit = math.floor(digit / 10)
end

print("Sum of squares of odd digits:", squareSum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code computes the sum of the squares of the odd digits within a given digit. After taking a digit input, the code enters a loop to process each digit sequentially. If the current digit is odd, its square is added to a running sum, `squareSum`. The digit is then updated by removing the last digit through division by 10. This process continues until all digits have been processed. The code concludes by displaying the sum of the squares of odd digits. Employing a loop and conditional checks, the code efficiently evaluates and presents the desired result, highlighting the calculation of odd digit squares within a digit.
''',
"e": ""
},
{
"no": 221,
"q":
"Write a program to generate the following series 54321   5432   543   54   5",
"a": '''
   for i = 5, 1, -1 do
   for j = 5, i, -1 do
       io.write(j)
   end
   print()
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code generates and prints a specific pattern of numbers. It uses two nested loops: the outer loop iterates from 5 down to 1, and the inner loop, nested within the outer loop, iterates from 5 down to the current value of `i`. During each iteration of the inner loop, it prints the value of `j`, effectively forming a decreasing sequence of numbers. After each inner loop iteration, a newline is printed using `print()` to move to the next line and create the pattern. As the outer loop continues, the inner loop generates sequences of decreasing numbers, resulting in the following pattern:
''',
"e": " ",
"f": " ",
"category": "series"
},
{
"no": 222,
"q":
"Write a program to enter any 20 numbers and display the smallest one using array",
"a": '''
local smallest = math.huge
for i = 1, 20 do
   print("Enter number", i)
   local num = io.read("*n")
   if num < smallest then
       smallest = num
   end
end

print("The smallest number is:", smallest)
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code prompts the user to input 20 numbers and identifies the smallest among them. It initializes the variable `smallest` with a value of positive infinity (`math.huge`). Through a loop, it iterates 20 times, requesting a number from the user each time. If the entered number is smaller than the current value of `smallest`, the value of `smallest` is updated with the entered number. After collecting all 20 numbers and comparing them, the code displays the smallest number among them using the message "The smallest number is:" followed by the determined value of `smallest`. This program efficiently finds and presents the smallest number among the user-provided inputs using a loop and conditional checks.
''',
"e": ""
},
{
"no": 223,
"q":
"Write a program to solve a quadratic equation ax2+bx+c=0 on the basis of the coefficient values a,b and c.",
"a": '''
   -- Function to solve quadratic equation
function solveQuadratic(a, b, c)
   local discriminant = b*b - 4*a*c
   if discriminant > 0 then
       local root1 = (-b + math.sqrt(discriminant)) / (2*a)
       local root2 = (-b - math.sqrt(discriminant)) / (2*a)
       return root1, root2
   elseif discriminant == 0 then
       local root = -b / (2*a)
       return root
   else
       return "No real roots"
   end
end

-- Coefficients
local a, b, c = 1, -3, 2

-- Call the function and print the roots
local root1, root2 = solveQuadratic(a, b, c)
if type(root1) == "number" then
   print("Root 1:", root1)
   print("Root 2:", root2)
else
   print(root1)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code defines a `solveQuadratic` function that computes the roots of a quadratic equation. It employs the discriminant to ascertain real roots. The coefficients `a`, `b`, and `c` are set, and the function is called to obtain the roots. The roots, if real, are then printed; otherwise, a message indicating no real roots is displayed. This code is designed to calculate and present the roots of a quadratic equation based on given coefficients, making it a valuable tool for solving such equations.
''',
"e": ""
},
{
"no": 224,
"q":
"Write a program to print -30   -20   -10   0   10   ……………20th terms",
"a": '''
  -- Print the series from -30 to 20 in increments of 10
for i = -30, 20, 10 do
   print(i)
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code utilizes a `for` loop to print a series of numbers in increments of 10. Starting from -30 and continuing up to 20, the loop iterates through the sequence and prints each value. This sequence creation is achieved by specifying the loop's starting point, ending point, and step size (10). The loop iteration increments by 10 at each step, generating the series -30, -20, -10, 0, 10, and 20. This code effectively produces a series of numbers that spans from -30 to 20, inclusive, with an interval of 10 units between each value.
''',
"e": "",
"category": "series"
},
{
"no": 225,
"q":
"Write a program to ask any string and print only consonant by removing vowels",
"a": '''
    -- Function to check if a character is a vowel
function isVowel(char)
   char = string.lower(char)
   return char == "a" or char == "e" or char == "i" or char == "o" or char == "u"
end

-- Input string
print("Enter a string:")
local input = io.read()

-- Remove vowels and print consonants
local consonants = ""
for i = 1, #input do
   local char = input:sub(i, i)
   if not isVowel(char) then
       consonants = consonants .. char
   end
end

print("Consonants:", consonants)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code defines a function `isVowel` to identify vowels by converting characters to lowercase and checking against a predetermined set. It then prompts the user to input a string. The code proceeds to iterate through each character in the input string. If a character is not a vowel, as determined by the `isVowel` function, it is added to the `consonants` string.

Finally, the program prints out the `consonants` string, which contains all the non-vowel characters from the input string. This code aids in filtering out vowels and displaying only the consonant characters present in the provided string, offering users a way to manipulate and analyze textual data.
''',
"e": " "
},
{
"no": 226,
"q":
"Write a program to ask number and count total number of digits",
"a": '''
    -- Input number
print("Enter a number:")
local number = tonumber(io.read())

-- Count digits
local count = 0
while number > 0 do
   number = math.floor(number / 10)
   count = count + 1
end

print("Total number of digits:", count)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prompts the user to input a number. It then uses a `while` loop to count the total number of digits in the input number. The loop iterates as long as the number is greater than zero. In each iteration, the number is divided by 10 using `math.floor` to remove the last digit, and the `count` variable is incremented.

Once the loop completes, the code displays the calculated count of digits in the input number. This code calculates and outputs the total number of digits present in the entered number, providing a straightforward way to determine its digit count.
''',
"e": ""
},
{
"no": 227,
"q":
"Write a program to find the sum of all even numbers from 2 to 100",
"a": '''
  local sum = 0
for i = 2, 100, 2 do
   sum = sum + i
end

print("Sum of even numbers from 2 to 100:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code initializes a variable `sum` to zero. It then uses a loop to iterate through even numbers from 2 to 100 with an increment of 2 in each step. During each iteration, the value of `i` is added to the `sum`. Once the loop finishes, the code prints the calculated sum of the even numbers in the specified range (from 2 to 100). This code calculates and displays the sum of all even numbers between 2 and 100, inclusive, by iteratively adding them to the `sum` variable.
''',
"e": " "
},
{
"no": 228,
"q":
"Write a program to ask any string and count total no of vowels and consonants",
"a": '''
   -- Function to check if a character is a vowel
function isVowel(char)
   char = string.lower(char)
   return char == "a" or char == "e" or char == "i" or char == "o" or char == "u"
end

-- Input string
print("Enter a string:")
local input = io.read()

-- Count vowels and consonants
local vowelCount = 0
local consonantCount = 0

for i = 1, #input do
   local char = input:sub(i, i)
   if isVowel(char) then
       vowelCount = vowelCount + 1
   else
       consonantCount = consonantCount + 1
   end
end

print("Total number of vowels:", vowelCount)
print("Total number of consonants:", consonantCount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code includes a function `isVowel` to identify vowels by converting characters to lowercase and checking against a predefined list. It then requests user input for a string. The code proceeds to count vowels and consonants separately within the input string. It iterates through each character, utilizing the `isVowel` function to classify characters. The `vowelCount` and `consonantCount` variables are updated accordingly. Finally, the program displays the total count of vowels and consonants in the input. This code snippet aids in analyzing textual data, assisting users in quantifying and distinguishing vowel and consonant occurrences within a provided string.
''',
"e": " "
},
{
"no": 229,
"q":
"Write a program to enter any 10 numbers and find the sum of odd numbers",
"a": '''
   -- Initialize sum
local sum = 0

-- Input 10 numbers and sum odd numbers
for i = 1, 10 do
   print("Enter number", i, ":")
   local num = tonumber(io.read())
   if num % 2 == 1 then
       sum = sum + num
   end
end

print("Sum of odd numbers:", sum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code initializes a sum variable to zero. It then enters a loop that iterates ten times. Within each iteration, the code prompts the user to input a number and checks if the entered number is odd (having a remainder of 1 when divided by 2). If the number is odd, it adds the number to the sum.

After the loop completes, the code prints the calculated sum of the odd numbers entered by the user. This code calculates the sum of ten odd numbers entered by the user and displays the total sum of those odd numbers.
''',
"e": " "
},
{
"no": 230,
"q":
"Write a program to convert  Nepalese currency into Indian currency.",
"a": '''
     -- Conversion rate from Nepalese Rupee to Indian Rupee
local conversionRate = 0.625

-- Input Nepalese Rupee amount
print("Enter amount in Nepalese Rupee:")
local nepaleseAmount = tonumber(io.read())

-- Convert and print equivalent Indian Rupee amount
local indianAmount = nepaleseAmount * conversionRate
print("Equivalent amount in Indian Rupee:", indianAmount)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code snippet defines a conversion rate from Nepalese Rupee to Indian Rupee. It then takes user input for an amount in Nepalese Rupees, calculates its equivalent value in Indian Rupees using the conversion rate, and prints the result. The code enables straightforward currency conversion and helps users determine the equivalent Indian Rupee value for a specified amount in Nepalese Rupees.
''',
"e": ""
},
{
"no": 231,
"q":
"Write a program to check whether the input number is divisible by 4 and  6  or not.",
"a": '''
   -- Input number
print("Enter a number:")
local number = tonumber(io.read())

-- Check divisibility by 4 and 6
if number % 4 == 0 and number % 6 == 0 then
   print(number, "is divisible by 4 and 6.")
else
   print(number, "is not divisible by both 4 and 6.")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code takes a number as input from the user. It then checks whether the input number is divisible by both 4 and 6 using the modulo operator (%). If the number is divisible by both 4 and 6, it prints a message indicating that the number is divisible by 4 and 6. Otherwise, it prints a message stating that the number is not divisible by both 4 and 6. This code helps determine whether a given number meets the divisibility criteria of both 4 and 6.
-''',
"e": " ",
"f": " "
},
{
"no": 232,
"q":
"Write a program to input monthly income in to compute annual tax to be paid. The tax rate is 15% if annual income is above Rs. 500000    otherwise tax rate is 10%.",
"a": '''
     -- Input monthly income
print("Enter monthly income:")
local monthlyIncome = tonumber(io.read())

-- Calculate annual income
local annualIncome = monthlyIncome * 12

-- Calculate tax based on income
local taxRate = annualIncome > 500000 and 0.15 or 0.10
local annualTax = annualIncome * taxRate

-- Print annual tax
print("Annual tax to be paid:", annualTax)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code calculates the annual tax to be paid based on the input monthly income. It prompts the user to enter their monthly income and then computes the corresponding annual income by multiplying it by 12. The code then determines the appropriate tax rate – 15% if the annual income is above Rs. 500,000, otherwise 10%. The annual tax is calculated by multiplying the annual income by the tax rate. Finally, the code prints the calculated annual tax amount, reflecting the tax obligation for the given monthly income.
''',
"e": ""
},
//Patterns programs
    {
"no": 233,
"q": "Write a program to display following pattern\n" +
"1 1  1  1 \n" +
"2 2 2 2\n" +
"3 3 3 3\n" +
"4 4 4 4\n ",
"a": '''
   for i = 1, 4 do
   for j = 1, 4 do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code creates a pattern with repeating numbers in each row. It employs two nested `for` loops to generate the pattern.
The outer loop iterates from 1 to 4. In each iteration of the outer loop, the inner loop prints the value of `i` (which is the value of the outer loop variable) multiple times, corresponding to the total number of columns (4). This produces a line of repeating numbers in each row. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 234,
"q": "Write a program to display following pattern\n" +
"1 2 3 4 5 \n" +
"1 2 3 4 5\n" +
"1 2 3 4 5\n" +
"1 2 3 4 5\n",
"a": '''
   for i = 1, 4 do
   for j = 1, 5 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of sequential numbers in each row. It uses two nested `for` loops to create the pattern.
The outer loop iterates from 1 to 4. For each iteration of the outer loop, the inner loop prints the values of `j` (ranging from 1 to 5) multiple times, producing a line of sequential numbers in each row. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 235,
"q": "Write a program to display following pattern\n" +
"5 5 5 5 5 \n" +
"4 4 4 4 4\n" +
"3 3 3 3 3\n" +
"2 2 2 2 2\n " +
"1 1 1 1 1",
"a": '''
    for i = 5, 1, -1 do
   for j = 1, 5 do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern of constant numbers in each row. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 5 down to 1. For each iteration of the outer loop, the inner loop prints the value of `i` (which is the value of the outer loop variable) multiple times, corresponding to the total number of columns (5). This produces a line of the same repeating number in each row. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 236,
"q": "Write a program to display following pattern\n" +
"5 4 3 2 1 \n" +
"5 4 3 2 1\n" +
"5 4 3 2 1\n" +
"5 4 3 2 1\n",
"a": '''
    for i = 1, 4 do
   for j = 5, 1, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of constant decreasing numbers in each row. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 4. For each iteration of the outer loop, the inner loop prints the values of `j` (ranging from 5 down to 1) multiple times, producing a line of the same decreasing numbers in each row. After each inner loop iteration, a newline character is added to move to the pattern.
''',
"e": ""
},
{
"no": 237,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"1 2 \n" +
"1 2 3 \n" +
"1 2 3 4\n" +
"1 2 3 4 5",
"a": '''
     puts "Enter the number of rows:"
rows = gets.chomp.to_i

(1..rows).each do |i|
 (1..i).each do |j|
   print "#{j} "
 end
 puts
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The program starts by prompting the user to input the number of rows for the pattern using the puts statement. The user's input is read and converted to an integer using gets.chomp.to_i. The program then uses nested loops to print the desired pattern. The outer loop runs from 1 to the specified number of rows (rows). Within the outer loop, the inner loop runs from 1 to the current row number (i). This inner loop is responsible for printing the numbers from 1 up to the current row number, separated by spaces. The print "#{j} " statement prints the value of j (which represents the current column number) followed by a space. After the inner loop completes for each row, the puts statement is used to move to the next line, creating a new row for the pattern. The pattern is built gradually as the outer loop iterates through the rows.
''',
"e": " "
},
{
"no": 238,
"q": "Write a program to display following pattern\n" +
"1 2 3 4 5\n" +
"1 2 3 4\n" +
"1 2 3 \n" +
"1 2 \n" +
"1",
"a": '''
    for i = 5, 1, -1 do
   for j = 1, i do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code creates a pattern of increasing sequential numbers in a diagonal manner. It utilizes two nested `for` loops to generate the pattern.
The outer loop iterates from 5 down to 1. In each iteration of the outer loop, the inner loop prints the sequential numbers from 1 to `i` (the current value of the outer loop variable). This results in lines of increasing numbers, with the count starting from 1 and progressing up to the value of `i`. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 239,
"q": "Write a program to display following pattern\n" +
"5 4 3 2 1 \n" +
"4 3 2 1\n" +
"3 2 1\n" +
"2 1 \n" +
"1",
"a": '''
     for i = 5, 1, -1 do
   for j = i, 1, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of decreasing sequential numbers in a diagonal manner. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 5 down to 1. For each iteration of the outer loop, the inner loop prints the current value of `j` (which ranges from `i` down to 1) multiple times. This results in a line of decreasing sequential numbers, where the value decreases from `i` down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 240,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"2 1\n" +
"3 2 1 \n" +
"4 3 2 1\n" +
"5 4 3 2 1",
"a": '''
    for i = 1, 5 do
   for j = i, 1, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern of decreasing sequential numbers in a diagonal manner. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 5. For each iteration of the outer loop, the inner loop prints the current value of `j` (which ranges from `i` down to 1) multiple times. This results in a line of decreasing sequential numbers, where the value decreases from `i` down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 241,
"q": "Write a program to display following pattern\n" +
"5 5 5 5 5 \n" +
"4 4 4 4\n" +
"3 3 3\n" +
"2 2\n" +
"1",
"a": '''
     for i = 5, 1, -1 do
   for j = 1, i do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of decreasing numbers in a diagonal manner. It uses two nested `for` loops to create the pattern.
The outer loop iterates from 5 down to 1. For each iteration of the outer loop, the inner loop prints the current value of `i` (which is the value of the outer loop variable) multiple times, corresponding to the value of `i`. This produces a line of repeating numbers, where the value decreases from 5 down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " ",
"f": " "
},
{
"no": 242,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"2 2\n" +
"3 3 3 \n" +
"4 4 4 4\n" +
"5 5 5 5 5",
"a": '''
    for i = 1, 5 do
   for j = 1, i do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern of increasing numbers in a diagonal manner. It employs two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 5. During each iteration of the outer loop, the inner loop prints the current value of `i` (which represents the value of the outer loop variable) multiple times, according to the value of `i`. This produces a line of repeating numbers, where the value increases from 1 to 5. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 243,
"q": "Write a program to display following pattern\n" +
"5 \n" +
"4 4\n" +
"3 3 3 \n" +
"2 2 2 2\n" +
"1 1 1 1 1",
"a": '''
     for i = 5, 1, -1 do
   for j = 1, i do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of decreasing numbers in a diagonal manner. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 5 down to 1. For each iteration of the outer loop, the inner loop prints the current value of `i` (which is the value of the outer loop variable) a certain number of times, corresponding to the value of `i`. This results in a line of repeating numbers, with the value decreasing from 5 down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 244,
"q": "Write a program to display following pattern\n" +
"1 1 1 1 1\n" +
"2 2 2 2\n" +
"3 3 3 \n" +
"4 4 \n" +
"5",
"a": '''
    for i = 1, 5 do
   for j = 6 - i, 1, -1 do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of repeating numbers in each row. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 5. For each iteration of the outer loop, the inner loop prints the value of `i` (the current value of the outer loop variable) a certain number of times, determined by the value of `j` (which ranges from `6 - i` down to 1). This results in lines of repeating numbers, with the count decreasing from `6 - i` down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 245,
"q": "Write a program to display following pattern\n" +
"5 \n" +
"5 4\n" +
"5 4 3 \n" +
"5 4 3 2\n" +
"5 4 3 2 1",
"a": '''
for i = 1, 5 do
   for j = 5, 6 - i, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern of decreasing numbers in each row. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 5. For each iteration of the outer loop, the inner loop prints the value of `j` (ranging from 5 down to `6 - i`, where `i` is the current value of the outer loop variable) multiple times. This results in lines of decreasing numbers, with the count decreasing from 5 down to the value of `6 - i`. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 246,
"q": "Write a program to display following pattern\n" +
"5 4 3 2 1 \n" +
"5 4 3 2 \n" +
"5 4 3 \n" +
"5 4 \n" +
"5",
"a": '''
for i = 5, 1, -1 do
   for j = 5, i, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of decreasing numbers in each row. It utilizes two nested `for` loops to create the pattern.

The outer loop iterates from 5 down to 1. For each iteration of the outer loop, the inner loop iterates from 5 down to the current value of `i`. The inner loop prints the value of `j` (ranging from 5 to the current value of `i`) multiple times, creating a line of decreasing numbers in each row. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 247,
"q": "Write a program to display following pattern\n" +
"6 6 6 6 6 6 \n" +
"4 4 4 4\n" +
"2 2",
"a": '''
for i = 6, 2, -2 do
   for j = 1, i do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern with constant numbers in each row, but the number of values in each row decreases. It uses a single `for` loop to create the pattern.
The loop iterates from 6 down to 2 with a step size of -2, which means it decreases by 2 in each iteration. For each iteration of the loop, the inner loop prints the value of `i` (the current value of the loop variable) a certain number of times, determined by the value of `i`. This results in lines of repeating numbers in each row, where the count of numbers decreases from `i` down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 248,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"1 2 1\n" +
"1 2 3 2 1\n" +
"1 2 3 4 3 2 1",
"a": '''
for i = 1, 4 do
   for j = 1, i do
       io.write(j, " ")
   end
   for j = i - 1, 1, -1 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of alternating sequential numbers in each row. It utilizes two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 4, controlling the number of rows. For each iteration of the outer loop, the first inner loop prints the sequential numbers from 1 to `i`. Then, the second inner loop prints the numbers from `i - 1` down to 1, creating a pattern of alternating sequential numbers. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 249,
"q": "Write a program to display following pattern\n" +
"1 1 1 1 1 \n" +
"1 1 1 1\n" +
"1 1 1\n" +
"1 1 \n" +
"1",
"a": '''
for i = 1, 5 do
   for j = i, 1, -1 do
       io.write("1 ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of increasing rows, each containing a sequence of constant "1" values. It uses two nested `for` loops to create the pattern.
The outer loop iterates from 1 to 5, controlling the number of rows. In each iteration of the outer loop, the inner loop prints the value "1" a certain number of times, determined by the value of `j` (which ranges from `i` to 5). This results in lines of "1" values, with the count decreasing from 5 down to `i`. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": " "
},
{
"no": 250,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"1 1\n" +
"1 1 1"
"1 1 1 1",
"a": '''
for i = 1, 4 do
   for j = 1, i do
       io.write("1 ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of increasing rows, each containing a sequence of constant "1" values. It uses two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 4, determining the number of rows. For each iteration of the outer loop, the inner loop prints the value "1" a certain number of times, determined by the value of `i` (which is the current value of the outer loop variable). This results in lines of "1" values, with the count increasing from 1 up to `i`. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 251,
"q": "Write a program to display following pattern\n" +
"2 2 2 2 \n" +
"2 2 2\n" +
"2 2\n" +
"2",
"a": '''
for i = 4, 1, -1 do
   for j = 1, i do
       io.write("2 ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern of decreasing rows, each containing a sequence of constant "2" values. It employs two nested `for` loops to create the pattern.

The outer loop iterates from 4 down to 1, controlling the number of rows. For each iteration of the outer loop, the inner loop prints the value "2" a certain number of times, determined by the value of `i` (which is the current value of the outer loop variable). This generates lines of "2" values, with the count decreasing from `i` down to 1. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 252,
"q": "Write a program to display following pattern\n" +
"3 \n" +
"3 3\n" +
"3 3 3\n" +
"3 3 3 3",
"a": '''
for i = 1, 4 do
   for j = i, 1, -1 do
       io.write("3 ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of increasing rows, with each row containing a sequence of constant "3" values. It utilizes two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 4, determining the number of rows. In each iteration of the outer loop, the inner loop prints the value "3" a certain number of times, determined by the value of `j` (ranging from `i` down to 1). This results in lines of "3" values, with the count increasing from 1 up to `i`. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 253,
"q": "Write a program to display following pattern\n" +
"1\n" +
"1 0\n" +
"1 0 1\n" +
"1 0 1 0 " +
"1 0 1 0 1",
"a": '''
for i = 1, 5 do
   for j = 1, i do
       if j % 2 == 0 then
           io.write("0 ")
       else
           io.write("1 ")
       end
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each row consists of alternating 1s and 0s, with the alternating pattern determined by the parity of `j`. It employs two nested `for` loops to manage rows and columns of the pattern.

The outer loop iterates from 1 to 5, controlling the number of rows. In each row, the inner loop iterates from 1 to `i`, and the condition `j % 2 == 0` checks if `j` is even. If `j` is even, it prints "0 "; otherwise, it prints "1 ". After each inner loop iteration, a newline character is added to proceed to the next row.
''',
"e": ""
},
{
"no": 254,
"q": "Write a program to display following pattern\n" +
"1 0 1 0 1 \n" +
"1 0 1 0\n" +
"1 0 1\n" +
"1 0 \n" +
"1",
"a": '''
for i = 1, 5 do
   for j = 1, 6 - i do
       io.write(tostring((i + j) % 2) .. " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern where each row alternates between 1 and 0, with the number of elements decreasing in each row from left to right. It uses two nested `for` loops to control the rows and columns of the pattern.
The outer loop iterates from 1 to 5, controlling the number of rows. For each row, the inner loop iterates from 1 to `6 - i`, printing the result of `(i + j) % 2` followed by a space. This expression alternates between 1 and 0 based on the sum of `i` and `j`, creating the alternating pattern. After each inner loop iteration, a newline character is added to move to the next line for the next row.
''',
"e": ""
},
{
"no": 255,
"q": "Write a program to display following pattern\n" +
"1 \n" +
"0 1\n" +
"1 0 1\n" +
"0 1 0 1 \n" +
"1 0 1 0 1",
"a": '''
for i = 1, 5 do
   for j = 1, i do
       io.write(tostring((i + j) % 2) .. " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each row alternates between 1s and 0s, forming a diagonal pattern. It uses two nested `for` loops to control the rows and columns of the pattern.
The outer loop iterates from 1 to 5, controlling the number of rows. For each row, the inner loop iterates from 1 to the current row index, printing the result of `(i + j) % 2` followed by a space. This expression alternates between 1 and 0 as the sum of `i` and `j` changes, creating the diagonal pattern. After each inner loop iteration, a newline character is added to move to the next line for the next row.
''',
"e": ""
},
{
"no": 256,
"q": "Write a program to display following pattern\n" +
"1 2 3 4 5 \n" +
"2 4 5 8 10\n" +
"3 6 9 12 15\n" +
"4 8 12 16 20 \n" +
"5 10 15 20 25",
"a": '''
for i = 1, 5 do
   local num = i
   for j = 1, 5 do
       io.write(num .. " ")
       num = num + i
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of numbers in increasing order within each row, with each subsequent number incremented by the row index value. It utilizes two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 5, controlling the rows. For each iteration of the outer loop, the inner loop iterates from 1 to 5, printing the value of `num` followed by a space. The `num` value starts with the current row index and is incremented by the row index value in each iteration of the inner loop. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 257,
"q": "Write a program to display following pattern\n" +
"6 6 6 6 6 6 \n" +
"4 4 4 4  \n" +
"2 2   \n",
"a": '''
for i = 6, 2, -2 do
   for j = 1, i do
       io.write(i, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each row consists of repeated numbers in decreasing order, with the number of repetitions corresponding to the row value. It uses a single `for` loop to control the rows and an inner loop to print the repeated numbers in each row.

Starting from 6 and decrementing by 2 in each iteration, the outer loop controls the number of rows. For each iteration of the outer loop, the inner loop iterates through the current value of `i`, printing that value repeatedly to match the row's repetition count. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 258,
"q": "Write a program to display following pattern\n" +
"1 2 3 4 5 6 \n" +
"  1 2 3 4\n" +
"    1 2\n",
"a": '''
for i = 1, 3 do
   for k = 1, i - 1 do
       io.write("  ")
   end
   for j = i, 6 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code generates a pattern where each row consists of ascending numbers, aligned diagonally. It utilizes two nested `for` loops to create the pattern.

The outer loop iterates from 1 to 3, controlling the rows. For each iteration of the outer loop, the first inner loop iterates from 1 to `i - 1`, adding spaces for alignment. The second inner loop then prints numbers starting from the current value of `i` up to 6, creating a sequence of increasing numbers. After each inner loop iteration, a newline character is added to move to the next line for the next row of the pattern.
''',
"e": ""
},
{
"no": 259,
"q": "Write a program to display following pattern\n" +
"8\n" +
"6 8\n" +
"4 6 8\n" +
"2 4 6 8",
"a": '''
for i = 8, 2, -2 do
   for j = 2, i, 2 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each row consists of ascending even numbers, with the number of elements in each row decreasing. It employs a single `for` loop to control the rows and an inner loop to print even numbers in each row. Starting from 8 and decrementing by 2, the outer loop manages rows. The inner loop prints even numbers from 2 up to the current row's value. This generates rows with increasing even numbers.
''',
"e": ""
},
{
"no": 260,
"q": "Write a program to display following pattern\n" +
"7 5 3 1\n" +
"7 5 3\n" +
"7 5\n" +
"7",
"a": '''
Sure, here's the Lua code for the given pattern:

```lua
for i = 4, 1, -1 do
   for j = 7, i * 2 - 1, -2 do
       io.write(j, " ")
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This code uses two nested loops: the outer loop iterates from 4 to 1 in decreasing order, and the inner loop iterates from 7 down to `i * 2 - 1` in steps of -2. This results in printing numbers that decrease by 2 on each line. The numbers are separated by spaces, and a newline is added at the end of each line.
''',
"e": ""
},
{
"no": 261,
"q": "Write a program to display following pattern\n" +
"12 \n" +
"9 12 \n" +
"6 9 12\n" +
"3 6 9 12",
"a": '''
for i = 0, 3 do
   local num = 12 - i * 3
   for j = 1, i + 1 do
       io.write(num, " ")
       num = num + 3
   end
   io.write("\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of numbers that increases on each line. It uses two nested loops: the outer loop iterates from 0 to 3, and the inner loop iterates from 1 to `i + 1`. Within the inner loop, a number `num` is calculated as `12 - i * 3`, and it's printed followed by a space. After printing the number, `num` is incremented by 3 to get the next number in the pattern.
''',
"e": ""
},
{
"no": 262,
"q": "Write a program to display following pattern\n" +
"AAAAA\n" +
"AAAAA\n" +
"AAAAA\n" +
"AAAAA\n" +
"AAAAA\n",
"a": '''
for i = 1, 5 do
   for j = 1, 5 do
       io.write("A")
   end
   io.write("\n")
end
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code uses nested loops to print the character "A" in a square pattern. It iterates through each row and column and prints "A" five times for each row. After printing five "A" characters, it moves to the next line using `io.write("\n")`. As a result, the output is a pattern of "AAAAA" repeated five times, forming a square.
''',
"e": ""
},
{
"no": 263,
"q": "Write a program to display following pattern\n" +
"G\n" +
"GO\n" +
"GOO\n" +
"GOOD\n",
"a": '''
local word = "GOOD"
for i = 1, #word do
   io.write(word:sub(1, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code generates a pattern using the word "GOOD." It iterates through each character of the word and prints substrings from the start of the word up to the current index. This creates a pattern where each line adds one more character from the word. The result is a sequence of lines, each displaying a progressively longer prefix of the word "GOOD."
''',
"e": ""
},
{
"no": 264,
"q": "Write a program to display following pattern\n" +
"D\n" +
"OD\n" +
"OOD\n" +
"GOOD\n",
"a": '''
local word = "GOOD"
for i = 1, #word do
   io.write(word:sub(1, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code iterates over each character of the word "GOOD" using a loop. In each iteration, it extracts a substring of the word from the beginning up to the current index and prints it, followed by a newline. This creates a pattern where each line adds one more character from the word "GOOD." The output gradually forms the desired pattern, with each line extending the word "GOOD" one character at a time
''',
"e": ""
},
{
"no": 265,
"q": "Write a program to display following pattern\n" +
"GOOD\n" +
"GOO\n" +
"Go\n" +
"G\n",
"a": '''
local word = "GOOD"
for i = 4, 1, -1 do
   io.write(word:sub(1, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prints substrings of the word "GOOD" with decreasing lengths on each line. It uses a loop that starts from 4 and decrements down to 1. Within each iteration, the `:sub()` method is used to extract a substring from the word "GOOD." The extracted substring starts from the first character and has a length of `i`. This results in printing substrings of "GOOD" with each successive line having fewer characters.
''',
"e": ""
},
{
"no": 266,
"q": "Write a program to display following pattern\n" +
"HELLO\n" +
"HELL\n" +
"HEL\n" +
"HE\n" +
"H\n",
"a": '''
local word = "HELLO"
for i = 1, 5 do
   io.write(word:sub(1, 6 - i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code prints the word "HELLO" with decreasing lengths on each line. It uses a loop that iterates from 1 to 5. Within each iteration, the `:sub()` method is used to extract a substring from the word "HELLO." The extracted substring starts from the first character and has a length of `6 - i`, where `i` is the current iteration index. This results in printing the word "HELLO" with each successive line having fewer characters.
''',
"e": ""
},
{
"no": 267,
"q": "Write a program to display following pattern\n" +
"D\n" +
"O\n" +
"O\n" +
"G\n",
"a": '''
local word = "GOOD"
for i = 4, 1, -1 do
   io.write(word:sub(i, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given Lua code prints the characters of the word "GOOD" in reverse order, one character per line. It uses a loop that starts from 4 and decrements down to 1. In each iteration, the `:sub()` method is used to extract a character from the word "GOOD" based on the current loop index, and then it is printed followed by a newline character. This results in printing the characters "D," "O," "O," and "G" in successive lines.
''',
"e": ""
},
{
"no": 268,
"q": "Write a program to display following pattern\n" +
"G\n" +
"O\n" +
"O\n" +
"D\n",
"a": '''
local word = "GOOD"
for i = 1, 4 do
   io.write((" "):rep(i - 1), word:sub(i, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code creates a pattern using the word "GOOD." It employs a loop that iterates from 1 to 4 to control the number of rows in the pattern. Within each iteration, the code uses the `:sub()` method to extract a character from the word "GOOD" based on the current iteration index. It also uses the `rep()` function to add a number of spaces equal to `i - 1` before printing the character. This results in a pattern where each row has an increasing number of spaces followed by a character from "GOOD."
''',
"e": ""
},
{
"no": 269,
"q": "Write a program to display following pattern\n" +
"G\n" +
" O\n" +
"  O\n" +
"   D\n",
"a": '''
local word = "GOOD"
for i = 1, 4 do
   io.write((" "):rep(i - 1), word:sub(i, i), "\n")
end
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code creates a pattern using the word "GOOD." It employs a loop that iterates from 1 to 4 to control the number of rows in the pattern. Within each iteration, the code uses the `:sub()` method to extract a character from the word "GOOD" based on the current iteration index. It also uses the `rep()` function to add a number of spaces equal to `i - 1` before printing the character. This results in a pattern where each row has an increasing number of spaces followed by a character from "GOOD."
''',
"e": ""
},
{
"no": 270,
"q": "Write a program to display following pattern\n" +
"D\n" +
" O\n" +
"  O\n" +
"   G\n",
"a": '''
local word = "DOG"
for i = 1, #word do
   io.write((" "):rep(i - 1), word:sub(i, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code uses a variable `word` with the value "DOG". It iterates through each character of the word. For each iteration, it adds spaces before the current character to create an indented pattern. The `rep` function is used to repeat the character based on the iteration. This results in the desired pattern where each letter is indented more than the previous one.
''',
"e": ""
},
{
"no": 271,
"q": "Write a program to display following pattern\n" +
"GOOD\n" +
"OOD\n" +
"OD\n" +
"D\n",
"a": '''
local word = "GOOD"
for i = 1, #word do
   io.write(word:sub(i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua code defines a variable `word` with the value "GOOD". It then iterates through each character of the word and prints out the substring from the current position to the end of the string. This creates the pattern where each subsequent line contains fewer letters of the word "GOOD".
''',
"e": ""
},
{
"no": 272,
"q": "Write a program to display following pattern\n" +
"D\n" +
"OD\n" +
"OOD\n" +
"GOOD",
"a": '''
local word = "GOOD"
for i = #word, 1, -1 do
   io.write(word:sub(1, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The code iterates through the characters of the word "GOOD" in reverse order, starting from the length of the word and decrementing down to 1. It uses the `:sub()` function to extract substrings of the word, gradually reducing the substring length with each iteration. This creates the pattern where each line displays a progressively shorter prefix of the word "GOOD," producing the desired output.
''',
"e": ""
},
{
"no": 273,
"q": "Write a program to display following pattern\n" +
"#####\n" +
" ####\n" +
"  ###\n" +
"   ##\n" +
"    #",
"a": '''
for i = 1, 5 do
   io.write((" "):rep(i - 1), ("#"):rep(6 - i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern of '#' characters arranged in an inverted triangular fashion. It uses two nested loops: the outer loop iterates from 1 to 5, controlling the number of rows, and the inner loop determines the number of '#' characters to print in each row. The number of spaces before the '#' characters increases with each iteration, while the number of '#' characters decreases.
''',
"e": ""
},
{
"no": 274,
"q": "Write a program to display following pattern\n" +
"  #  \n" +
" ###  \n" +
"#####\n",
"a": '''
for i = 1, 3 do
   io.write((" "):rep(3 - i), ("#"):rep(2 * i - 1), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern consisting of '#' characters arranged in a triangular fashion. It utilizes two nested loops: the outer loop iterates from 1 to 3, controlling the number of rows, and the inner loop determines the number of '#' characters to print in each row. The number of spaces before the '#' characters decreases with each iteration, while the number of '#' characters increases.
''',
"e": ""
},
{
"no": 275,
"q": "Write a program to display following pattern\n" +
"GO\n" +
" OO\n" +
"  OD\n",
"a": '''
local word = "GOOD"
for i = 1, 3 do
   io.write((" "):rep(i - 1), word:sub(i, i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''Certainly! The Erlang code provided defines a module named `patterns` with an exported function `pattern273/0`. This function generates and displays a pattern of letters with varying indentation, resulting in an interesting visual arrangement.

The `pattern273/0` function is constructed as follows:

1. The function first defines a list named `Lines`, where each element represents a line in the pattern. Each line contains a combination of letters ("G", "O", and "D") and spaces to create the desired indentation effect.

2. The `lists:foreach/2` function is utilized to iterate through each line in the `Lines` list. For each line, a function is applied that uses the `io:format/1` function to print the line's content to the console.
In summary, the `pattern273/0` function exemplifies how basic string manipulation and IO functions in Erlang can be employed to create patterns with visual variations, such as different levels of indentation in this case. This can be useful for generating decorative or stylized text patterns.
''',
"e": ""
},
{
"no": 276,
"q": "Write a program to display following pattern\n" +
"*****\n" +
"*****\n" +
"*****\n" +
"*****\n" +
"*****",
"a": '''
for i = 1, 5 do
   io.write(("*"):rep(5), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each line consists of a sequence of five asterisk (*) characters. The `("*"):rep(5)` expression repeats the asterisk character five times for each line. Since this expression is repeated for five lines, the output consists of five lines, each containing five asterisk characters.
''',
"e": ""
},
{
"no": 277,
"q": "Write a program to display following pattern\n" +
"*\n" +
"**\n" +
"***\n" +
"****\n" +
"*****",
"a": '''
for i = 1, 5 do
   io.write(("*"):rep(i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each line consists of a sequence of asterisk (*) characters. The number of asterisks in each line increases from 1 to 5, creating an ascending pattern. The `("*"):rep(i)` expression repeats the asterisk character 'i' times, where 'i' ranges from 1 to 5. As a result, the output forms an increasing sequence of lines with varying numbers of asterisks.
''',
"e": ""
},
{
"no": 278,
"q": "Write a program to display following pattern\n" +
"*****\n" +
"****\n" +
"***\n" +
"**\n" +
"*",
"a": '''
for i = 4, 1, -1 do
   io.write(("*"):rep(i), "\n")
end
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code generates a pattern where each line consists of a sequence of asterisk (*) characters. The number of asterisks in each line decreases from 5 to 1, creating a descending pattern. The `("*"):rep(i)` expression repeats the asterisk character 'i' times, where 'i' ranges from 5 to 1. As a result, the output forms a decreasing sequence of lines with varying numbers of asterisks.
''',
"e": ""
},
{
"no": 279,
"q": "Write a program to display following pattern\n" +
"5*****\n" +
"4****\n" +
"3***\n" +
"2**\n" +
"1*",
"a": '''
for i = 5, 1, -1 do
   io.write(i, ("*"):rep(i), "\n")
end
   ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code provided creates a pattern where each line begins with a number 'i' (ranging from 5 to 1) and is followed by a sequence of asterisk (*) characters, the count of which is determined by 'i'. This results in a decreasing sequence of numbers accompanied by a visual representation of the numbers using asterisks. The output forms a pyramid-like pattern with descending numbers and corresponding asterisks on each line.
''',
"e": ""
},
{
"no": 280,
"q": "Write a program to find the sum of elements in an array.",
"a": '''
local array = {10, 20, 30, 40, 50}
local sum = 0
for i = 1, #array do
    sum = sum + array[i]
end
print("Sum of array elements:", sum)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":'''
   The provided Lua code initializes an array of numbers and then utilizes a loop to iterate through the array, accumulating the sum of its elements. It begins with a variable `sum` set to 0 and iterates over each element in the array, adding each element's value to the `sum`. Finally, the code prints the sum of all elements in the array. Upon execution, this script generates the output "Sum of array elements: 150", which represents the total sum of the elements in the array [10, 20, 30, 40, 50].
     ''',
"e": ""
},
{
"no": 281,
"q": "Write a program to find the maximum element in an array.",
"a": '''
local array = {10, 20, 30, 40, 50}
local max = array[1]
for i = 2, #array do
    if array[i] > max then
        max = array[i]
    end
end
print("Maximum element:", max)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":'''
The given Lua code initializes an array of numbers and then employs a loop to iterate through the array, aiming to find the maximum element. It initializes a variable `max` with the value of the first element and compares it with subsequent elements in the array. If a larger element is encountered, the `max` value is updated. Finally, the code prints the maximum element found in the array. Upon execution, this script yields the output "Maximum element: 50", as 50 is the largest number in the array [10, 20, 30, 40, 50].
''',
"e": ""
},
{
"no": 282,
"q": "Write a program to find the minimum element in an array.",
"a": '''
local array = {10, 20, 30, 40, 50}
local min = array[1]
for i = 2, #array do
    if array[i] < min then
        min = array[i]
    end
end
print("Minimum element:", min)
''',
 "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
'''The provided Lua code initializes an array of numbers and then iterates through the array to find the minimum element. It starts by assuming the first element is the minimum and then compares it with the rest of the elements. If a smaller element is found, it updates the minimum value. Finally, the code prints the minimum element found in the array. When executed, this script outputs the message "Minimum element: 10" since 10 is the smallest number in the array [10, 20, 30, 40, 50].
''',
     "e": ""
   },
   {
     "no": 283,
     "q": "Write a program to sort an array in ascending order.",
     "a": '''
local array = {50, 10, 30, 40, 20}
table.sort(array)
print("Sorted array:", table.concat(array, ", "))
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
     '''
The provided Lua code initializes an array of numbers, then sorts them in ascending order using `table.sort()`. After sorting, the code employs `table.concat()` to convert the sorted array into a comma-separated string. When executed, this script outputs the sorted numbers as a string, showing the sequence: 10, 20, 30, 40, 50.
''',
     "e": ""
   },
   {
     "no": 284,
     "q": "Write a Program to find the sum of all elements in an array.",
     "a": '''
local array = {10, 20, 30, 40, 50}
local sum = 0
for i = 1, #array do
sum = sum + array[i]
end
print("Sum of array elements:", sum)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":'''This code calculates and prints the sum of elements in the provided array. It initializes a variable `sum` to zero. Then, it iterates through each element in the array using a loop and adds the value of the current element to the `sum`. After iterating through all elements, the code uses the `print` function to display the total sum of the array elements.
''',

     "e": "",

   },
   {
     "no": 285,
     "q": "Write a Program to find the largest element in an array.",
     "a": '''
local array = {10, 20, 30, 40, 50}
local max = array[1]
for i = 2, #array do
if array[i] > max then
max = array[i]
end
end
print("Largest element:", max)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":'''This code calculates and prints the largest element in the provided array. It initializes a variable `max` with the value of the first element in the array. Then, it iterates through the remaining elements using a loop. If the current element is greater than the value stored in `max`, it updates `max` to the value of the current element. This ensures that `max` will eventually hold the largest element in the array. Finally, the code uses the `print` function to display the largest element.
''',
     "e": ""
   },
   {
     "no": 286,
     "q": "Program to find the smallest element in an array.",
     "a": '''
local array = {10, 20, 30, 40, 50}
local min = array[1]
for i = 2, #array do
if array[i] < min then
min = array[i]
end
end
print("Smallest element:", min)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":'''
This code finds and prints the smallest element in the given array. It initializes a variable `min` with the value of the first element in the array. Then, it iterates through the rest of the elements in the array using a loop. If the current element is smaller than the value stored in `min`, it updates `min` to the value of the current element. This ensures that `min` will eventually hold the smallest element in the array. Finally, the code prints the smallest element using the `print` function.
''',
     "e": ""
   },
   {
     "no": 287,
     "q": "Program to find the average of all elements in an array.",
     "a": '''
local array = {10, 20, 30, 40, 50}
local sum = 0
for i = 1, #array do
sum = sum + array[i]
end
local average = sum / #array
print("Average of array elements:", average)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":'''This code calculates the average of elements in the given array. It initializes a variable `sum` to store the running sum of array elements. Then, it uses a loop to iterate through the array, adding each element to the `sum`. After the loop, the average is computed by dividing the `sum` by the total number of elements in the array (`#array`). Finally, the code prints the calculated average of the array elements.
''',
     "e": ""
   },
   {
     "no": 288,
     "q": "Program to count the number of even and odd elements in an array.",
     "a": '''
local array = {10, 21, 30, 45, 50}
local evenCount = 0
local oddCount = 0
for i = 1, #array do
if array[i] % 2 == 0 then
evenCount = evenCount + 1
else
oddCount = oddCount + 1
end
end
print("Even elements:", evenCount)
print("Odd elements:", oddCount)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
    '''This code calculates the number of even and odd elements in the given array. It initializes two variables, `evenCount` and `oddCount`, to keep track of the counts. The loop iterates through the array and checks if each element is even or odd by using the modulo operator `%`. If an element is divisible by 2 (remainder is 0), it is considered even, and `evenCount` is incremented. Otherwise, it's considered odd, and `oddCount` is incremented. Finally, the code prints the counts of even and odd elements in the array.
''',
     "e": ""
   },
   {
     "no": 289,
     "q": "Program to reverse an array.",
     "a": '''
def reverse_array(arr)
reversed = []
i = arr.length - 1

while i >= 0
reversed << arr[i]    i -= 1
end

return reversed
end

original_array = [1, 2, 3, 4, 5]
reversed_array = reverse_array(original_array)

puts "Original Array: #{original_array}"
puts "Reversed Array: #{reversed_array}"
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
   '''The code defines a method named reverse_array that takes an array as input. Inside the method, it initializes an empty array called reversed and an index i to the last element of the input array. It then enters a loop that iterates from the last element to the first element of the input array. During each iteration, it appends the current element at index i to the reversed array and moves to the previous index. After the loop, the method returns the reversed array. When the program is run, it demonstrates this method by reversing an example array, printing both the original and reversed arrays. This results in showing the reversed order of elements in the array.
''',
     "e": ""
   },
   {
     "no": 290,
     "q": "Program to find the second largest element in an array.",
     "a": '''
local array = {10, 20, 30, 40, 50}
local max1 = array[1]
local max2 = array[1]
for i = 2, #array do
if array[i] > max1 then
max2 = max1
max1 = array[i]
elseif array[i] > max2 then
max2 = array[i]
end
end
print("Second largest element:", max2)
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
   '''This code snippet finds the second largest element in the given array. It initializes two variables, `max1` and `max2`, with the first element of the array. The loop iterates through the rest of the array and compares each element with `max1` and `max2`. If an element is greater than `max1`, it updates both `max1` and `max2`, keeping `max1` as the largest and `max2` as the second largest. If an element is greater than `max2` but not greater than `max1`, it updates only `max2`. By the end of the loop, `max2` will hold the value of the second largest element.''',

     "e": ""
   },
   {
     "no": 291,
     "q": "Program to find the second smallest element in an array.",
     "a": '''
local array = {10, 5, 8, 20, 15}
table.sort(array)
print("Second smallest element:", array[2])
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
    '''The provided Lua code finds and prints the second smallest element in the `array`. It sorts the `array` in ascending order using `table.sort()`, which places the smallest element at index 1. Thus, the second smallest element is at index 2, which is then printed using `array[2]`.
''',

     "e": ""
   },
   {
     "no": 292,
     "q": "Program to sort an array in ascending order.",
     "a": '''
local array = {50, 10, 30, 40, 20}
table.sort(array)
print("Sorted array:", table.concat(array, ", "))
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
     '''The provided Lua code initializes an array of numbers, then sorts them in ascending order using `table.sort()`. After sorting, the code employs `table.concat()` to convert the sorted array into a comma-separated string. When executed, this script outputs the sorted numbers as a string, showing the sequence: 10, 20, 30, 40, 50.
''',

     "e": ""
   },
   {
     "no": 293,
     "q": "Program to sort an array in descending order.",
     "a": '''
# function to sort an array in descending order
-module(array_operations).
-export([sort_desc/1]).

sort_desc(Array) ->
lists:sort(fun(A, B) -> B < A end, Array).
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
         '''The Erlang module `array_operations` defines an exported function `sort_desc/1` to sort an array in descending order. This is achieved by utilizing the `lists:sort/2` function, where a custom comparison function `(fun(A, B) -> B < A end)` is provided. This function compares elements in reverse order, resulting in a descending sorting arrangement. The output will display the sorted array in descending order.      ''',
     "e": ""
   },
   {
     "no": 294,
     "q": "Program to find the frequency of each element in an array.",
     "a": '''
local array = {10, 20, 10, 30, 20, 40, 20}
local frequency = {}

for _, value in ipairs(array) do
frequency[value] = (frequency[value] or 0) + 1
end

for value, count in pairs(frequency) do
print(value, "appears", count, "times")
end
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
      '''The provided Lua code determines the frequency of each element in the `array`. It employs a loop to traverse the `array` and, for each value encountered, increments its corresponding count in the `frequency` table. After the loop, another iteration over the `frequency` table is used to print the count of each value in the format "value appears count times". ''',
     "e": ""
   },
   {
     "no": 295,
     "q": "Program to check if an array is palindrome or not.",
     "a": '''
local array = {10, 20, 30, 20, 10}
local isPalindrome = true
local length = #array

for i = 1, length // 2 do
if array[i] ~= array[length - i + 1] then
isPalindrome = false
break
end
end

if isPalindrome then
print("Array is a palindrome")
else
print("Array is not a palindrome")
end
''',
     "shown": false,
     "input": "input",
     "output": "output",
     "explanation":
     '''The provided Lua code checks whether the `array` is a palindrome or not. It initializes `isPalindrome` as `true` and uses a loop to compare each element's value with its mirror element in the array (from both ends towards the center). If any mismatch is found, `isPalindrome` is set to `false`, and the loop breaks. Finally, the program prints whether the `array` is a palindrome or not, based on the value of `isPalindrome`.''',
"e": ""
},
{
"no": 296,
"q": "Program to remove duplicate elements from an array.",
"a": '''
local array = {10, 20, 10, 30, 20, 40, 20}
local unique = {}
local seen = {}

for _, value in ipairs(array) do
    if not seen[value] then
        table.insert(unique, value)
        seen[value] = true
    end
end

print("Array with duplicates removed:", table.concat(unique, ", "))
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code removes duplicate elements from the `array` by creating a `unique` array. It utilizes the `seen` table to keep track of whether a value has been encountered before. As the code iterates through the `array`, it checks if the value has not been seen before. If not, the value is added to the `unique` array, and its presence is marked in the `seen` table. Finally, the program prints the modified array, which contains only the unique elements from the original array.  ''',

"e": ""
},
{
"no": 297,
"q": "Program to find the maximum and minimum difference between two elements in an array.",
"a": '''
# function to find the maximum and minimum difference between two elements in an array

local array = {10, 5, 8, 20, 15}
local maxDiff = -math.huge
local minDiff = math.huge

for i = 1, #array do
    for j = i + 1, #array do
        local diff = math.abs(array[i] - array[j])
        maxDiff = math.max(maxDiff, diff)
        minDiff = math.min(minDiff, diff)
    end
end

print("Maximum difference:", maxDiff)
print("Minimum difference:", minDiff)
     ''',
"shown": false,
"input": "input",
"output": "output",
"Explanation":
'''The provided Lua code efficiently calculates the maximum and minimum differences between elements in the array. Utilizing nested loops, it systematically compares all pairs of elements, computing the absolute differences. Through these comparisons, the program updates the `maxDiff` and `minDiff` variables to retain the largest and smallest disparities encountered. After traversal, the code prints the obtained maximum and minimum differences. This algorithm captures the full range of differences in the array's elements, presenting both the greatest and least differences achieved through systematic analysis.
''',
"e": ""
},
{
"no": 298,
"q": "Program to merge two sorted arrays into a single sorted array.",
"a": '''
local array1 = {10, 20, 30, 40}
local array2 = {15, 25, 35, 45}
local merged = {}
local i, j = 1, 1

while i <= #array1 and j <= #array2 do
    if array1[i] < array2[j] then
        table.insert(merged, array1[i])
        i = i + 1
    else
        table.insert(merged, array2[j])
        j = j + 1
    end
end

while i <= #array1 do
    table.insert(merged, array1[i])
    i = i + 1
end

while j <= #array2 do
    table.insert(merged, array2[j])
    j = j + 1
end

print("Merged and sorted array:", table.concat(merged, ", "))
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided Lua code merges two sorted arrays, `array1` and `array2`, into a single sorted array named `merged`. It employs two pointers, `i` and `j`, to iterate through both arrays simultaneously while comparing elements. The smaller element between `array1[i]` and `array2[j]` is added to the `merged` array. After the loop, any remaining elements in either array are appended to `merged`. The final result is printed using `table.concat()`, showcasing the sorted merger of both arrays. This process ensures an efficient combination of sorted arrays into a single sorted array.
 ''',

"e": ""
},
{
"no": 299,
"q": "Program to find the intersection of two arrays.",
"a": '''
local array1 = {10, 20, 30, 40}
local array2 = {15, 20, 25, 40}
local intersection = {}

for _, value1 in ipairs(array1) do
    for _, value2 in ipairs(array2) do
        if value1 == value2 then
            table.insert(intersection, value1)
            break
        end
    end
end

print("Intersection:", table.concat(intersection, ", "))
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The Lua code computes the intersection of two arrays, `array1` and `array2`, by iterating through each element of `array1` and comparing it with every element of `array2`. When a match is found, the element is added to the `intersection` array. The final common elements are displayed using `table.concat()`. This process effectively captures the shared values, providing an output that showcases the elements present in both arrays, thereby forming their intersection.''',

"e": ""
},
{
"no": 300,
"q": "Program to find the union of two arrays.",
"a": '''
local array1 = {10, 20, 30, 40}
local array2 = {15, 25, 30, 45}
local union = {}

for _, value in ipairs(array1) do
    table.insert(union, value)
end

for _, value in ipairs(array2) do
    local found = false
    for _, u in ipairs(union) do
        if value == u then
            found = true
            break
        end
    end
    if not found then
        table.insert(union, value)
    end
end

print("Union:", table.concat(union, ", "))
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program creates the union of two arrays, `array1` and `array2`, by sequentially adding unique elements from each array to the `union` array. It checks for duplicates during the addition process to maintain uniqueness. The program then utilizes `table.concat()` to print the resulting union, a collection of distinct values from both arrays. This approach guarantees that the final union contains all unique elements from both arrays, facilitating efficient merging while excluding duplicates.
 ''',
"e": ""
},
{
"no": 301,
"q": "Program to find the missing number in an array of consecutive integers.",
"a": '''
local array = {1, 2, 3, 5, 6, 7, 8, 9, 10}

local function findMissingNumber(arr)
    local n = #arr + 1
    local totalSum = n * (n + 1) / 2
    local arraySum = 0

    for i = 1, #arr do
        arraySum = arraySum + arr[i]
    end

    local missingNumber = totalSum - arraySum

    return missingNumber
end

local missingNumber = findMissingNumber(array)
print("Missing number:", missingNumber)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''This Lua program aims to find a missing number in an array of consecutive integers. The `findMissingNumber` function calculates the theoretical sum of the entire sequence using the formula for the sum of an arithmetic progression. It then computes the sum of the given array. The difference between the expected sum and the actual sum is the missing number. By applying this logic, the program identifies the missing number and prints it. For the provided `array`, which lacks the number 4, the program correctly outputs "Missing number: 4". This approach works by utilizing the property that the sum of consecutive integers can be derived from a mathematical formula.
 ''',
"e": ""
},
{
"no": 302,
"q": "Program to rotate an array to the left by a given number of positions.",
"a": '''
function rotateLeft(arr, positions)
    local n = #arr
    positions = positions % n

    for i = 1, positions do
        local temp = arr[1]
        for j = 1, n - 1 do
            arr[j] = arr[j + 1]
        end
        arr[n] = temp
    end
end

-- Example usage
local array = {1, 2, 3, 4, 5}
local rotations = 2
rotateLeft(array, rotations)
for _, value in ipairs(array) do
    print(value)
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given code defines a function `rotateLeft` to rotate an array to the left by a specified number of `positions`. It first calculates the actual number of positions needed by taking the modulus with the array's size. Then, it performs the rotation by shifting elements one by one. In each iteration, the first element is temporarily stored, and subsequent elements are shifted to the left. Finally, the last element is assigned the stored value to complete the rotation. The example usage rotates the array `{1, 2, 3, 4, 5}` by 2 positions to the left. After rotation, the array becomes `{3, 4, 5, 1, 2}`, which is then printed element by element.
 ''',
"e": ""
},
{
"no": 303,
"q": "Program to find the majority element in an array.",
"a": '''
function findMajorityElement(arr)
    local n = #arr
    local count = {}
    
    for _, num in ipairs(arr) do
        count[num] = (count[num] or 0) + 1
        if count[num] > n / 2 then
            return num
        end
    end
    
    return nil
end

-- Example usage
local array = {2, 2, 3, 2, 4, 2, 5, 2}
local majority = findMajorityElement(array)
if majority then
    print("Majority element:", majority)
else
    print("No majority element")
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code defines a function `findMajorityElement` to identify the majority element in an array, which appears more than half of the array's size. It uses a `count` table to keep track of the occurrences of each element. It iterates through the array, updating the count for each element. If the count of an element becomes greater than half the array's size, it is returned as the majority element. In the example usage with the array `{2, 2, 3, 2, 4, 2, 5, 2}`, the element `2` appears 5 times, which is more than half the array's size, making it the majority element. Thus, the output is `"Majority element: 2"`. If there's no majority element, the output would be `"No majority element"`.
 ''',

"e": ""
},

{
"no": 304,
"q": "Program to find the kth largest element in an array.",
"a": '''
function kthLargest(arr, k)
    table.sort(arr, function(a, b) return a > b end)
    return arr[k]
end

-- Example usage
local array = {3, 1, 4, 1, 5, 9, 2, 6}
local k = 3
local kth = kthLargest(array, k)
print("Kth largest:", kth)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code defines a function `kthLargest` to find the kth largest element in an array. It sorts the array in descending order by using a custom comparison function that returns `true` when the first value `a` is greater than the second value `b`. Then, it returns the element at index `k`. In the example usage with the array `{3, 1, 4, 1, 5, 9, 2, 6}` and `k` as 3, after sorting the array becomes `{9, 6, 5, 4, 3, 2, 1, 1}`. The 3rd largest element is `5`, which is then printed as `"Kth largest: 5"`.
''',
"e": ""
},
{
"no": 305,
"q": "Program to find the kth smallest element in an array.",
"a": '''
function kthSmallest(arr, k)
    table.sort(arr)
    return arr[k]
end

-- Example usage
local array = {3, 1, 4, 1, 5, 9, 2, 6}
local k = 2
local kth = kthSmallest(array, k)
print("Kth smallest:", kth)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given code defines a function `kthSmallest` to find the kth smallest element in an array. It first sorts the array using `table.sort`, which places the elements in ascending order. Then, it directly returns the element at index `k`. In the example usage with the array `{3, 1, 4, 1, 5, 9, 2, 6}` and `k` as 2, after sorting the array becomes `{1, 1, 2, 3, 4, 5, 6, 9}`. The 2nd smallest element is `1`, which is then printed as `"Kth smallest: 1"`.
 ''',

"e": ""
},
{
"no": 306,
"q": "Program to find the sum of two matrices.",
"a": '''
function matrixSum(mat1, mat2)
    local rows, cols = #mat1, #mat1[1]
    local result = {}

    for i = 1, rows do
        result[i] = {}
        for j = 1, cols do
            result[i][j] = mat1[i][j] + mat2[i][j]
        end
    end

    return result
end

-- Example usage
local matrix1 = {{1, 2}, {3, 4}}
local matrix2 = {{5, 6}, {7, 8}}
local sumMatrix = matrixSum(matrix1, matrix2)
for _, row in ipairs(sumMatrix) do
    print(table.concat(row, " "))
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code defines a function `matrixSum` that computes the sum of two matrices. It iterates through the rows and columns of the input matrices (`mat1` and `mat2`), element by element, and calculates the sum of corresponding elements, storing the result in the `result` matrix. Sum: 6    8
					  10   12

''',
"e": ""
},
{
"no": 307,
"q": "Program to find the product of two matrices.",
"a": '''
function matrixProduct(mat1, mat2)
    local rows1, cols1 = #mat1, #mat1[1]
    local rows2, cols2 = #mat2, #mat2[1]
    local result = {}

    for i = 1, rows1 do
        result[i] = {}
        for j = 1, cols2 do
            local sum = 0
            for k = 1, cols1 do
                sum = sum + mat1[i][k] * mat2[k][j]
            end
            result[i][j] = sum
        end
    end

    return result
end

-- Example usage
local matrix1 = {{1, 2}, {3, 4}}
local matrix2 = {{5, 6}, {7, 8}}
local productMatrix = matrixProduct(matrix1, matrix2)
for _, row in ipairs(productMatrix) do
    print(table.concat(row, " "))
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code defines a function `matrixProduct` to compute the product of two matrices. It iterates through the rows of the first matrix (`mat1`) and columns of the second matrix (`mat2`), calculating the dot product of corresponding row and column vectors and storing the result in the `result` matrix. The `result` matrix is built element by element by summing the products of corresponding elements of the row vector from `mat1` and the column vector from `mat2`. Product: 19  22
							  43    50
''',
"e": ""
},
{

"no": 308,
"q": "Program to check if two arrays are equal.",
"a": '''
function arraysEqual(arr1, arr2)
    if #arr1 ~= #arr2 then
        return false
    end

    for i = 1, #arr1 do
        if arr1[i] ~= arr2[i] then
            return false
        end
    end

    return true
end

-- Example usage
local array1 = {1, 2, 3}
local array2 = {1, 2, 3}
if arraysEqual(array1, array2) then
    print("Arrays are equal")
else
    print("Arrays are not equal")
end
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''
The code defines a function `arraysEqual` to compare two arrays for equality. It first checks if the lengths of both arrays are not equal, in which case it returns `false`. Then, it iterates through the arrays, element by element, comparing their values. If any element is not equal, the function returns `false`. If the loop completes without finding any unequal elements, it returns `true`, indicating that the arrays are equal. In the example, both `array1` and `array2` have the same elements, so the output is `"Arrays are equal"`.
''',
"e": ""
},
{

"no": 309,
"q": "Program to find the maximum product of two elements in an array",
"a": '''
function maxProduct(arr)
    local n = #arr
    if n < 2 then
        return nil
    end

    local max1, max2 = math.max(arr[1], arr[2]), math.min(arr[1], arr[2])
    
    for i = 3, n do
        if arr[i] > max1 then
            max2 = max1
            max1 = arr[i]
        elseif arr[i] > max2 then
            max2 = arr[i]
        end
    end
    
    return max1 * max2
end

-- Example usage
local array = {3, 1, 4, 1, 5, 9, 2, 6}
local maxProd = maxProduct(array)
print("Maximum product:", maxProd)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The code defines a function `maxProduct` to find the maximum product of two elements within an array. It handles cases where the array has less than 2 elements by returning `nil`. The function initializes `max1` and `max2` with the two largest and second-largest elements respectively. It iterates through the array, updating these values to keep track of the largest and second-largest elements encountered. The final result is the product of `max1` and `max2`. In the example usage with `{3, 1, 4, 1, 5, 9, 2, 6}`, the two largest elements are 9 and 6, yielding a maximum product of 54, which is printed as `"Maximum product: 54"`.
''',
"e": ""
},
{
"no": 310,
"q": "Program to find the median of an array.",
"a": '''
function findMedian(arr)
    table.sort(arr)
    local n = #arr
    if n % 2 == 0 then
        local mid1 = arr[n / 2]
        local mid2 = arr[n / 2 + 1]
        return (mid1 + mid2) / 2
    else
        return arr[(n + 1) / 2]
    end
end

-- Example usage
local array = {3, 1, 4, 1, 5, 9, 2, 6}
local median = findMedian(array)
print("Median:", median)
     ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The provided code defines a function `findMedian` to calculate the median of an array. It sorts the array and finds the middle element(s) depending on the array's length. If the length is even, it averages the two middle elements; if it's odd, it directly returns the middle element. In the example usage with `{3, 1, 4, 1, 5, 9, 2, 6}`, the array is sorted as `{1, 1, 2, 3, 4, 5, 6, 9}`, and since the length is 8 (even), the median is (4 + 3) / 2 = 3.5. Thus, the output will be `"Median: 3.5"`.
''',
"e": ""
},

{
"no": 311,
"q": "Program to find the leaders in an array (elements that are greater than all elements to their right).",
"a": '''
function findLeaders(arr)
    local n = #arr
    local leaders = {}
    local maxRight = arr[n]
    leaders[#leaders + 1] = maxRight
    
    for i = n - 1, 1, -1 do
        if arr[i] > maxRight then
            maxRight = arr[i]
            leaders[#leaders + 1] = maxRight
        end
    end
    
    return leaders
end

-- Example usage
local array = {16, 17, 4, 3, 5, 2}
local leaders = findLeaders(array)
print("Leaders:", table.concat(leaders, ", "))
  ''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The given code defines a function `findLeaders` that identifies "leaders" in an array, which are elements greater than all elements to their right. It iterates through the array in reverse, initializing `maxRight` as the last element. If an element is greater than `maxRight`, it becomes a leader, and the `maxRight` is updated. The function returns an array of these leader elements. In the example, for the input `{16, 17, 4, 3, 5, 2}`, the leaders are `17`, `5`, and `2`, which are printed as `"Leaders: 17, 5, 2"`.
''',
"e": ""
},
{
"no": 312,
"q": "Program to find the frequency of a given element in an array.",
"a": '''
function findFrequency(arr, element)
    local count = 0
    for _, value in ipairs(arr) do
        if value == element then
            count = count + 1
        end
    end
    return count
end

-- Example usage
local array = {1, 2, 3, 2, 4, 2, 5, 2}
local element = 2
local frequency = findFrequency(array, element)
print("Frequency of", element, ":", frequency)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''The code defines a function `findFrequency` that counts occurrences of a given element in an array. It iterates through the array, increments `count` when element matches, and returns the total count. In the example, it counts how many times `element` 2 appears in `{1, 2, 3, 2, 4, 2, 5, 2}`, yielding a frequency of 4.
''',
"e": ""
},
{
"no": 313,
"q": "Program to find the maximum subarray sum in an array.",
"a": '''
 function maxSubarraySum(arr)
    local maxEndingHere = 0
    local maxSoFar = 0
    
    for _, value in ipairs(arr) do
        maxEndingHere = math.max(value, maxEndingHere + value)
        maxSoFar = math.max(maxSoFar, maxEndingHere)
    end
    
    return maxSoFar
end

-- Example usage
local array = {-2, 1, -3, 4, -1, 2, 1, -5, 4}
local maxSum = maxSubarraySum(array)
print("Maximum subarray sum:", maxSum)
''',
"shown": false,
"input": "input",
"output": "output",
"explanation":
'''
The provided code defines a function `maxSubarraySum` that calculates the maximum sum of a subarray within a given array. It uses two variables, `maxEndingHere` and `maxSoFar`, to track the maximum sum ending at the current position and the overall maximum sum seen so far. It iterates through the array and at each step, updates `maxEndingHere` to the maximum value between the current element and the sum of the current element and the previous `maxEndingHere`. The `maxSoFar` is updated with the maximum value between itself and the updated `maxEndingHere`. This ensures that the function finds the largest sum of any contiguous subarray in the array. The example usage demonstrates how to use the function with a sample array. Maximum subarray sum:6
''',
"e": ""
}

];

const QuestionsAnswers({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Container();
}
}

