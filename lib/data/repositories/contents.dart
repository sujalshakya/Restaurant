// ignore_for_file: unnecessary_string_escapes
import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  static final List<Map<String, dynamic>> contentsList = [
    {
      "items": [
        {
          "title": "Lecture 1: Introduction to Lua",
          "chapter_length": 3,
          "content": [
            {
              "tag_line": "Chapter 1: What is Lua?",
              "title": "What is Lua?",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Lua is a dynamic, lightweight, and versatile scripting language designed for embedded use and extensibility. It was created in 1993 by Roberto Ierusalimschy, Luiz Henrique de Figueiredo, and Waldemar Celes at the Pontifical Catholic University of Rio de Janeiro in Brazil ''',
                "tap2":
                '''The name "Lua" means "moon" in Portuguese, reflecting the language's aim to complement and enhance other programming languages. ''',
              },
            },
            {
              "tag_line": "Chapter 2:History and uses of Lua",
              "title": " History and uses of Lua",
              "page_length": 1,
              "page1": {
                "tap1":
                "Lua was first released in 1993, and its development was motivated by the need for a flexible scripting language for use in real-time applications. Over the years, Lua has gained popularity, especially in the video game industry, where it is widely used for scripting game logic, AI behaviors, and user interfaces.",
                "tap2":
                '''Beyond gaming, Lua has found applications in various domains, including web development, scientific simulations, and even in large-scale applications like Adobe Lightroom. Its simplicity, high performance, and easy integration have contributed to its widespread adoption.
                    ''',
              },
            },
            {
              "tag_line":
              "Chapter 3:Installing Lua and setting up the environment",
              "title": "Installing Lua and setting up the environment",
              "page_length": 5,
              "page1": {
                "tap1":
                '''<h3>1.Download Lua</h3><br>The first step is to download the Lua interpreter. You can obtain it from the official Lua website: http://www.lua.org/download.html. Choose the appropriate version for your operating system (Windows, Linux, macOS, etc.). ''',
                "tap2":
                '''<h3>2.Install Lua:</h3><br>The installation process varies depending on your operating system.
                    ''',
                "tap3":
                '''<h4>Windows</h4><br>For Windows, you'll typically download a ZIP archive containing the Lua interpreter. Extract the contents to a directory of your choice (e.g., C:\Lua) and add that directory to your system's PATH environment variable. This allows you to run Lua from any command prompt.
                    ''',
                "tap4":
                '''<h4>Linux/macOS</h4><br>On Linux and macOS, you'll usually compile Lua from source. After downloading the source code, open a terminal and navigate to the source directory. Then, run the following commands:
                    <h5>make linux  # For Linux<br>
                    make macosx # For macOS
                    sudo make install</h5>
                    This will compile Lua and install it on your system. You can then run Lua from the terminal.
                    ''',
                "tap5":
                '''<h3>3.Verify Installation:</h3><br>To ensure that Lua has been successfully installed, open a terminal/command prompt and type lua -v. This should display the Lua version information if the installation was successful.''',
                "tap6":
                '''<h3>4.Creating Lua Scripts:</h3><br>You can create Lua scripts using any text editor. Save your scripts with the .lua extension. For example, you could create a file named hello.lua.''',
                "tap7":
                '''<h3>4.Running Lua Scripts:</h3><br>To execute a Lua script, open a terminal/command prompt, navigate to the directory where your script is located, and use the lua command followed by the script's filename. For example:<br><h5>lua hello.lua</h5>''',
                "tap8":
                '''<h3>5.Interactive Mode:</h3><br>Lua also provides an interactive mode where you can type and execute Lua commands directly in the terminal. Simply type lua in the terminal, and you'll be in the Lua interactive mode. You can type Lua code and see the immediate results.<br><h4>
                    Note: I suggest you use an online compiler while learning the basics of Lua.
                    </h4>''',
              },
            },
          ],
          // Add quiz at the end of the lecture - After content
        },
        {
          "title": "Lecture 2: Basics of Lua Programming",
          "chapter_length": 5,
          "content": [
            {
              "tag_line": "Chapter 1: Hello World in Lua",
              "title": "Hello World in Lua",
              "page_length": 1,
              "page1": {
                "tap1":
                "How will you print a message in Lua?? Hint: the answer lies in the question. Yes!!! Like Python, we use the print function to display our message to the console.",
                "tap2": '<h5>print("Hello, World!")</h5>',
                "tap3":
                '''Shall I even explain the use of double quotes for string literals??? I guess(hope) not.''',
              },
            },
            {
              "tag_line":
              "Chapter 2: Variables and data types (numbers, strings, booleans, tables).",
              "title":
              "Variables and data types (numbers, strings, booleans, tables).",
              "page_length": 1,
              "page1": {
                "tap1":
                "Guess what?? Creating a variable is much much simpler in Lua. Again, it's similar to Python. Check the syntax below:",
                "tap2":
                '''<h5>variableName = value</h5><br>Since I have a job to do, let's also check local and global variables in Lua.''',
                "tap3":
                '''<h3>1.Local Variables:</h3><br>Local variables are declared using the local keyword. If you want a variable to have a limited scope, you use local when declaring it. Local variables are generally preferred due to their controlled scope and reduced risk of causing unexpected issues in your code.''',
                "tap4": '''<h4>Syntax:<br>local variable_name = value </h4>
                    ''',
                "tap5":
                '''<h3>2.Global Variables:</h3><br>Global variables are accessible from anywhere in the program, including all functions and blocks. However, it's generally considered good practice to minimize the use of global variables because they can make your code harder to understand and maintain, and they might lead to unintended side effects.
                    To create a new global variable, you simply assign a value to a variable name without using the local keyword.
                    ''',
                "tap6":
                '''<h4>Syntax:<br>globalVar = 20  -- This is a global variable</h4>Now taking about data types, again what is there to explain? But, assuming you are new here (I know you are not) data types are the types of data a variable holds. Here are some data types:
                    ''',
                "tap7":
                '''<h4>Numbers:</h4>Lua supports both integer and floating-point numbers.
                    ''',
                "tap8":
                '''<h4>Strings:</h4>Strings represent sequences of characters and can be enclosed in single or double quotes.
                    ''',
                "tap9":
                '''<h4>Booleans:</h4>Booleans have two possible values, true or false, and are crucial for decision-making in code.
                    ''',
                "tap10":
                '''<h4>Tables:</h4>Tables are a versatile data structure capable of storing collections of key-value pairs and arrays.
                    Example:<br>
                    <h5>-- Numbers
                    local age = 25
                    local pi = 3.14159

                    -- Strings
                    local name = "Alice"
                    local message = 'Hello, Lua!'

                    -- Booleans
                    local isTrue = true
                    local isFalse = false

                    -- Tables
                    local person = {name = "Bob", age = 30}
                    local colors = {"red", "green", "blue"}</h5>
                    ''',
              },
            },
            {
              "tag_line": "Chapter 3: Comments and whitespace",
              "title": "Comments and whitespace",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Comments provide explanations within the code and are ignored by the Lua interpreter. 
                    As a fellow programmer, I would highly recommend to use comments on your code. 
                    Single-line comments: Created using --.
                    Multiline comments: Enclosed between --[[ and --]].
                    ''',
                "tap2": '''Example:<br><h5>-- This is a single-line comment
                    --[[ This is a
                        multiline comment
                    --]]

                    local x = 10   -- This is an inline comment</h5> ''',
              },
            },
            {
              "tag_line": "Chapter 4: Basic input and output ",
              "title": "Basic input and output",
              "page_length": 1,
              "page1": {
                "tap1":
                '''We know how to output our results. Now what about input from the user???
                    Well, unlike Python this time we use io.read() function to take input.
                    ''',
                "tap2": '''Example:<br><h5>-- Read input from the user
                            print("Enter your name:")
                            local name = io.read()
                            print("Hello, " .. name .. "!")

                            -- Output formatted text
                            local age = 25
                            print("You are " .. age .. " years old.")  </h5> ''',
                "tap4":
                '''<h4>NOTE: Incase you don't know, the data type of user input obtained using the io.read() function is almost always a string.</h4> ''',
              },
            },
            {
              "tag_line": "Chapter 5: Second Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question':
              'What function is used to display a message to the console in Lua?',
              'answer': 'print()',
              'options': [' input()', 'display()', 'print()', 'log()']
            },
            {
              'question': 'How are local variables declared in Lua?',
              'answer': ' using the local keyword',
              'options': [
                ' using the local keyword',
                'using the global keyword',
                ' without any keyword',
                'using the var keyword'
              ]
            },
            {
              'question':
              'What is the primary advantage of using local variables?',
              'answer': 'They reduce the risk of unexpected issues',
              'options': [
                'They have a wider scope',
                'They can be accessed from anywhere',
                'They reduce the risk of unexpected issues',
                'They are automatically initialized'
              ]
            },
            {
              'question':
              'Which of the following is not a valid data type in Lua?',
              'answer': 'Floats',
              'options': ['Numbers', 'Strings', 'Floats', 'Booleans']
            },
            {
              'question': 'How is user input obtained in Lua?',
              'answer': 'Using io.read()',
              'options': [
                ' Using input()',
                'Using read()',
                'Using get_input()',
                'Using io.read()'
              ]
            },
          ]
        },
        {
          "title": "Lecture 3: Control Structures",
          "chapter_length": 5,
          "content": [
            {
              "tag_line": "Chapter 1: Conditional Statements(if,else if,else)",
              "title": "Conditional Statements(if,else if,else)",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Like life, we need to make decisions in coding. Conditional statements allow you to execute different blocks of code based on whether a specific condition is true or false (brand-new information). 
                  Here is the syntax of it:
                  
                  ''',
                "tap2": '''<h5>-- if statement
                          if condition then
                              -- code to execute if condition is true
                          end

                          -- if-else statement
                          if condition then
                              -- code to execute if condition is true
                          else
                              -- code to execute if condition is false
                          end

                          -- if-elseif-else statement
                          if condition1 then
                              -- code to execute if condition1 is true
                          elseif condition2 then
                              -- code to execute if condition2 is true
                          else
                              -- code to execute if neither condition1 nor condition2 is true
                          end</h5>''',
                "tap3":
                '''It's very much similar to Python, the only addition is the “then” keyword.
                  To prevent this section from being too short, let's check out some examples.
                  ''',
                "tap4": '''<h5>-- Example 1: Using if-else statements
                          local x = 10
                          if x > 5 then
                              print("x is greater than 5")
                          else
                              print("x is not greater than 5")
                          end

                          -- Example 2: Using if-elseif-else statements
                          local grade = 85
                          if grade >= 90 then
                              print("A")
                          elseif grade >= 80 then
                              print("B")
                          elseif grade >= 70 then
                              print("C")
                          else
                              print("D or below")
                          end
                      </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 2: Logical Operators(and,or,not)",
              "title": "Logical operators(and,or,not)",
              "page_length": 2,
              "page1": {
                "tap1": '''
                    Logical operators are used to combine and manipulate conditions. They help you create more complex conditions by combining simpler ones. The three horsemen of logical operators are:
                    <h4>1.and operator:</h4> Evaluating to true if both conditions are true.
                    <h4>or operator:</h4> Evaluating to true if at least one of the conditions is true.
                    <h4>not operator:</h4> Inverting the truth value of a condition.
                    ''',
                "tap2": '''<b>Example:</b> <br><h5>-- Using logical AND
                            if condition1 and condition2 then
                                -- code to execute if both condition1 and condition2 are true
                            end
                            -- Using logical OR
                            if condition1 or condition2 then
                                -- code to execute if either condition1 or condition2 is true
                            end
                            -- Using logical NOT
                            if not condition then
                                -- code to execute if condition is false
                            end</h5>''',
              },
            },
            {
              "tag_line": "Chapter 3: Comparision Operators(==,<,>,<=,>=,~=)",
              "title": "Comparision Operators(==,<,>,<=,>=,~=)",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Comparison operators are used to compare values and produce Boolean results (true or false). These operators are crucial for constructing conditions and making decisions in your code. The only new thing here is the not-operator is the tilde character (~).
                          ''',
                "tap2": '''<h5>-- Example 1: Using comparison operators
                  local num1 = 10
                  local num2 = 15
                  if num1 == num2 then
                      print("Numbers are equal")
                  elseif num1 < num2 then
                      print("num1 is less than num2")
                  else
                      print("num1 is greater than num2")
                  end</h5> ''',
              },
            },
            {
              "tag_line": "Chapter 4: Loops(while,repeat..until,for)",
              "title": "Loops(while,repeat..until,for)",
              "page_length": 1,
              "page1": {
                "tap1":
                '''<h3>1.While Loop:</h3><br>A while loop repeatedly executes a block of code as long as a specified condition is true. The condition is evaluated before each iteration. If the condition is false initially, the loop may never run.<br><h5>while condition do
                  -- Code to repeat while the condition is true
              end</h5>
                          ''',
                "tap2": '''Example:<br><h5>local count = 0
                    while count < 5 do
                        print("Count:", count)
                        count = count + 1
                    end</h5><br>
                    <h4>The end keyword is used to mark the end of a code block associated with a control structure.</h4>  ''',
                "tap3":
                '''<h3>2.repeat..until Loop:</h3><br>A repeat...until loop is similar to a while loop, but it evaluates the condition after each iteration (remember do while loop??). This ensures that the loop's code block is executed at least once.<br><h5>repeat
                    -- Code to execute
                until condition</h5>             
                          ''',
                "tap4": '''Example:<br><h5>local number = 0
                        repeat
                            print("Number:", number)
                            number = number + 1
                        until number == 5</h5> ''',
                "tap5":
                '''<h3>3.For Loop:</h3><br>A for loop is used to iterate over a range of values. It consists of an initialization, a condition, and an increment (or decrement) step. The loop variable takes on the values within the specified range.<br><h5>for variable = start_value, end_value, step do
                -- Code to execute in each iteration
            end</h5>
                          ''',
                "tap6":
                '''Example:<br><h5>local fruits = {"apple", "banana", "cherry"}
                for i, fruit in ipairs(fruits) do
                    print(fruit)
                end</h5> <br>In this example, the for loop iterates over the fruits table, assigning each fruit's value to the fruit variable in each iteration. The i variable contains the index of the current fruit.''',
              },
            },
            {
              "tag_line": "Chapter 5: Third Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question':
              'Which of the following keywords is used to execute a specific block of code based on a condition in Lua?',
              'answer': 'if',
              'options': ['when', 'decide', ' if', 'choose']
            },
            {
              'question':
              'What is the purpose of the "then" keyword in conditional statements in Lua?',
              'answer': 'It marks the beginning of the code block to execute.',
              'options': [
                ' It specifies the condition to check.',
                'It marks the beginning of the code block to execute.',
                ' It separates the "if" from the condition.',
                ' It specifies the "else" condition.'
              ]
            },
            {
              'question':
              'Which logical operator evaluates to true if both conditions are true?',
              'answer': 'and',
              'options': ['not', 'or', 'and', 'nor']
            },
            {
              'question':
              'Which comparison operator is used to check if two values are not equal in Lua?',
              'answer': '~=',
              'options': ['<>', '~=', '!=', '><']
            },
            {
              'question':
              'In a "for" loop in Lua, what is the purpose of the "step" value?',
              'answer':
              'It determines the increment or decrement value in each iteration.',
              'options': [
                'It specifies the starting point of the loop.',
                'It specifies the condition for loop termination.',
                'It determines the increment or decrement value in each iteration.',
                ' It indicates the number of iterations.'
              ]
            },
          ]
        },
        {
          "title": "Lecture 4: Lua Functions",
          "chapter_length": 4,
          "content": [
            {
              "tag_line": "Chapter 1: Defining and calling functions",
              "title": "Defining and calling functions",
              "page_length": 1,
              "page1": {
                "tap1":
                '''We know what a function is. Well, in the 0.0001% case you don't know what a function is, a function is a block of code that can be executed multiple times after writing it once.
                    Here is the syntax to create a function in Lua:
                    ''',
                "tap2": '''<h5>function functionName(parameters)
                            -- Function body
                        end</h5> ''',
                "tap3":
                "Now, with the above syntax, let's create a function and call it.",
                "tap4": '''<h5>function greet(name)
                            print("Hello, " .. name .. "!")
                        end
                        greet("Alice")  -- Output: Hello, Alice!
                        greet("Bob")    -- Output: Hello, Bob!
                </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 2: Function parameters and return values",
              "title": "Function parameters and return values",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Parameters are the data we provide to a function while creating it. Like any other programming language, you can pass parameters to functions and receive return values from them in Lua.
                    Here is the syntax:
                    ''',
                "tap2": '''
                    <h5>function functionName(param1, param2)
                    -- Function body
                    return returnValue
                end</h5>
                    ''',
                "tap3": '''Example:<br>
                  <h5>function add(a, b)
                    return a + b
                end
                local sum = add(5, 3)
                print(sum)  -- Output: 8</h5>
                  ''',
              },
            },
            {
              "tag_line": "Chapter 3: Anonymous functions(closures)",
              "title": "Anonymous functions(closures)",
              "page_length": 1,
              "page1": {
                "tap1":
                "I have a hard time remembering names. So, let's create some nameless functions. Anonymous functions, also known as closures, are functions that don't have a specific name. ",
                "tap2": '''<h5>local functionName = function(parameters)
                          -- Function body
                      end</h5>
                        ''',
                "tap3":
                '''Confusing right?? Well,  let's understand with an example.<br> <h5>local function multiplier(factor)
                    return function(x)
                        return x * factor
                    end
                end
                local double = multiplier(2)
                local triple = multiplier(3)
                print(double(5))  -- Output: 10
                print(triple(4))  -- Output: 12</h5><br>
                In this example, multiplier returns an anonymous function that "remembers" the factor variable. This is the concept of closure.
                        ''',
              },
            },
            {
              "tag_line": "Chapter 4: Fourth Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question': 'What is a function in programming?',
              'answer': 'A block of code that can be executed multiple times.',
              'options': [
                'A variable that stores values.',
                'A statement that repeats code.',
                'A block of code that can be executed multiple times.',
                ' A type of loop.'
              ]
            },
            {
              'question':
              'What is the purpose of defining a function in programming?',
              'answer': 'To encapsulate a block of code that can be reused.',
              'options': [
                'To store numbers',
                'To create conditional statements.',
                'To execute code only once.',
                ' To encapsulate a block of code that can be reused.'
              ]
            },
            {
              'question': 'Which keyword is used to define a function in Lua?',
              'answer': 'function',
              'options': ['def', 'func', 'function', ' create']
            },
            {
              'question': 'How is a function called in Lua?',
              'answer': 'By using the function name followed by parentheses.',
              'options': [
                "Using the call keyword.",
                'By typing its name in capital letters.',
                'By using the execute keyword',
                "By using the function name followed by parentheses."
              ]
            },
            {
              'question':
              'In the context of anonymous functions, what is the concept of "closure"?',
              'answer':
              "A function that has access to variables from its containing function's scope.",
              'options': [
                'A function with no parameters.',
                "A function that has access to variables from its containing function's scope.",
                'A function that cannot be called.',
                ' A function without a return statement.'
              ]
            },
          ]
        },
        {
          "title": "Lecture 5: Tables and Arrays",
          "chapter_length": 5,
          "content": [
            {
              "tag_line": "Chapter 1: Introduction to tables",
              "title": "Introduction to tables",
              "page_length": 2,
              "page1": {
                "tap1":
                ''' Remember we already mentioned tables and arrays above in this lecture? 
                    ''',
                "tap2":
                '''In Lua, tables are incredibly versatile data structures that can store collections of values with different data types. They're not just used as arrays but can represent objects, maps, sets, and more.
                    ''',
              },
            },
            {
              "tag_line": "Chapter 2: Creating and indexing tables",
              "title": "Creating and indexing tables",
              "page_length": 1,
              "page1": {
                "tap1":
                '''There are various ways to create tables in Lua. Here are them:
                    ''',
                "tap2": ''' <h5>-- Using constructor
                      local myTable = {}
                      -- Using values
                      local anotherTable = {1, 2, 3, 4}
                      -- Combining values and keys
                      local person = {name = "Alice", age = 30}
                  </h5>''',
                "tap3":
                '''It's somewhat similar to associative arrays in Python. A little change in syntax tho. 
                    Now let's access the data from the above table:
                    ''',
                "tap4": ''' <h5>print(person.name)  -- Output: Alice
                    print(anotherTable[2])  -- Output: 2
                  </h5>''',
                "tap5":
                ''' <h5>Note: In Lua, indexing for arrays (numerically indexed tables) starts from 1, not 0 as in some other programming languages. This means that the first element of an array has an index of 1, the second element has an index of 2, and so on.
                  </h5>''',
              },
            },
            {
              "tag_line": "Chapter 3:Multidimensional tables",
              "title": "Multidimensional tables",
              "page_length": 1,
              "page1": {
                "tap1": '''Basically, a table within a table (tableseption).
                      Here is a simple example of how to Create multi-dimensional tables in Lua and access them.
                ''',
                "tap2": ''' <h5>local matrix = {
                          {1, 2, 3},
                          {4, 5, 6},
                          {7, 8, 9}
                      }
                      print(matrix[2][3])  -- Output: 6
                            </h5>''',
              },
            },
            {
              "tag_line": "Chapter 4:Iterating through tables",
              "title": "Iterating through tables",
              "page_length": 1,
              "page1": {
                "tap1":
                '''You can iterate through tables using different methods. One common approach is to use a for loop with the pairs function to iterate over key-value pairs:
                ''',
                "tap2":
                ''' <h5>local fruitPrices = {apple = 0.5, banana = 0.3, orange = 0.6}
                for fruit, price in pairs(fruitPrices) do
                    print(fruit, price)
                End
                            </h5>''',
                "tap3":
                '''Another approach is using the ipairs function to iterate over sequential numeric indices:
                ''',
                "tap4": ''' <h5>local numbers = {10, 20, 30, 40}
                          for index, value in ipairs(numbers) do
                              print(index, value)
                          end
                            </h5>''',
              },
            },
            {
              "tag_line": "Chapter 5: Fifth Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question': 'What can tables in Lua store?',
              'answer': "Collections of values with different data types",
              'options': [
                "Only numeric values",
                'Only strings',
                'Collections of values with different data types',
                'Only boolean values'
              ]
            },
            {
              'question':
              'In Lua, how is indexing for arrays (numerically indexed tables) different from some other languages?',
              'answer': 'It starts from 1.',
              'options': [
                'It starts from 0.',
                ' It starts from -1.',
                ' It starts from 1.',
                ' It starts from 2.'
              ]
            },
            {
              'question':
              'How is indexing accomplished for accessing elements in a table?',
              'answer': ' Using square brackets []',
              'options': [
                'Using curly braces {}',
                ' Using square brackets []',
                ' Using parentheses ()',
                'Using angle brackets <>'
              ]
            },
            {
              'question':
              'What Lua function can be used to iterate over key-value pairs in a table?',
              'answer': 'pairs()',
              'options': ['pairs', 'iterate()', 'loop()', 'transverse()']
            },
            {
              'question':
              'What Lua function is used to iterate over sequential numeric indices in a table?',
              'answer': 'ipairs()',
              'options': ['iterate()', ' pairs', 'numeric()', 'ipairs()']
            },
            {
              'question':
              'What is the key difference between pairs() and ipairs() functions when iterating through tables in Lua?',
              'answer':
              'ipairs() iterates over only the values, while pairs() iterates over key-value pairs.',
              'options': [
                'pairs() works for nested tables, while ipairs() does not.',
                'ipairs() works for key-value pairs, while pairs() works for sequential indices.',
                'pairs() only works with arrays, while ipairs() works with associative tables.',
                'ipairs() iterates over only the values, while pairs() iterates over key-value pairs.'
              ]
            },
          ]
        },
        {
          "title": "Lecture 6: String and pattern matching",
          "chapter_length": 5,
          "content": [
            {
              "tag_line": "Chapter 1:String manipulation functions",
              "title": "String manipulation functions",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Time for some string operation. Some common string manipulation functions in Lua include:
                    string.sub(s, start, finish): Extracts a substring from the given string s starting at the start index and ending at the finish index.
                    ''',
                "tap2": '''<h5>local originalString = "Hello, world!"
                      local subString = string.sub(originalString, 8, 13)
                      print(subString)  -- Outputs: world!</h5>
                    ''',
                "tap3": '''string.len(s): Returns the length of the string s.
                    ''',
                "tap4": '''<h5>local text = "Lua programming"
                        local length = string.len(text)
                        print(length)  -- Outputs: 15</h5>
                    ''',
                "tap5":
                '''string.upper(s) and string.lower(s): Convert the string s to uppercase or lowercase, respectively.
                    ''',
                "tap6": '''<h5>local originalString = "Hello, Lua!"
                        local upperCaseString = string.upper(originalString)
                        local lowerCaseString = string.lower(originalString)
                        print(upperCaseString)  -- Outputs: HELLO, LUA!
                        print(lowerCaseString)  -- Outputs: hello, lua!</h5>
                    ''',
                "tap7":
                '''string.find(s, pattern): Searches for a pattern within the string s and returns the start and end indices of the first occurrence.
                    ''',
                "tap8":
                '''<h5>local sentence = "Lua is a powerful scripting language."
                    local pattern = "powerful"
                    local start, finish = string.find(sentence, pattern)
                    print(start, finish)  -- Outputs: 10 17</h5>
                    ''',
                "tap9":
                '''string.gsub(s, pattern, replacement): Replaces all occurrences of pattern in the string s with the replacement string.
                    ''',
                "tap10":
                '''<h5>local originalString = "I love programming in Lua. Lua is fun!"
                    local pattern = "Lua"
                    local replacement = "Python"
                    local modifiedString = string.gsub(originalString, pattern, replacement)
                    print(modifiedString)  -- Outputs: I love programming in Python. Python is fun</h5>
                    ''',
              },
            },
            {
              "tag_line": "Chapter 2: Strings concatenation and formatting",
              "title": "Strings concatenation and formatting",
              "page_length": 1,
              "page1": {
                "tap1":
                '''String concatenation involves combining multiple strings into a single string. In Lua, you can concatenate strings using the .. operator. For example:
                ''',
                "tap2": '''<h5>local str1 = "Hello, "
                    local str2 = "world!"
                    local concatenated = str1 .. str2
                    print(concatenated)  -- Outputs: Hello, world!
                      </h5> ''',
                "tap3":
                "String formatting allows you to embed variables or values within a string. Lua uses the % symbol as a placeholder for values that you want to insert into a string. For example:",
                "tap4": '''<br><h5>local name = "Alice"
                            local age = 30
                            local formatted = string.format("My name is %s and I am %d years old.", name, age)
                            print(formatted)  -- Outputs: My name is Alice and I am 30 years old.
                      </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 3: Pattern matching and regular expressions",
              "title": "Pattern matching and regular expressions",
              "page_length": 1,
              "page1": {
                "tap1":
                ''' Pattern matching involves searching for specific patterns within strings. Lua provides pattern matching through the string.match function, which uses patterns similar to regular expressions but with a simpler syntax. Here's an example
                    ''',
                "tap2": '''<h5>local text = "The date is 2023-08-13."
                          local pattern = "%d%d%d%d%-%d%d%-%d%d"
                          local matched = string.match(text, pattern)
                          print(matched)  -- Outputs: 2023-08-13
                      </h5> ''',
                "tap3":
                '''In this example, the pattern %d%d%d%d%-%d%d%-%d%d matches the date format "YYYY-MM-DD."''',
              },
            },
            {
              "tag_line": "Chapter 4: Sixth Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question':
              'What does the string.sub(s, start, finish) function in Lua do?',
              'answer': "Extracts a substring from the given string.",
              'options': [
                'Finds a pattern within the string.',
                ' Replaces occurrences of a pattern with a replacement.',
                ' Converts a string to uppercase.',
                'Extracts a substring from the given string.'
              ]
            },
            {
              'question': 'What does the string.len(s) function return in Lua?',
              'answer': 'The number of characters in the string.',
              'options': [
                'The number of characters in the string.',
                'The first character of the string.',
                'The length of the pattern in the string.',
                'The index of the last character in the string.'
              ]
            },
            {
              'question':
              'Which operator is used for string concatenation in Lua?',
              'answer': '..',
              'options': ['**', '..', '++', '+']
            },
            {
              'question':
              'What does the string.find(s, pattern) function return in Lua?',
              'answer': 'The index of the first occurrence of the pattern.',
              'options': [
                'The number of occurrences of the pattern.',
                'The index of the first occurrence of the pattern.',
                'The index of the last occurrence of the pattern.',
                'The pattern itself.'
              ]
            },
            {
              'question':
              'What is the purpose of using %s and %d in string formatting?',
              'answer':
              'They are placeholders for values to be inserted into the string.',
              'options': [
                'They are used for pattern matching.',
                'They are used for string concatenation.',
                'They are placeholders for values to be inserted into the string.',
                'They represent special escape characters.'
              ]
            },
            {
              'question':
              'What function in Lua is used for pattern matching, similar to regular expressions?',
              'answer': 'string.match',
              'options': [
                'string.replace',
                'string.complex',
                'string.match',
                'string.parse'
              ]
            },
            {
              'question':
              'What is the result of executing string.format("My name is %s and I am %d years old.", "Alice", 30)?',
              'answer': 'My name is Alice and I am 30 years old.',
              'options': [
                'My name is Alice and I am 30 years old',
                'My name is %s and I am %d years old.',
                'My name is 30 and I am Alice years old',
                'An error occurs.'
              ]
            },
          ]
        },
        {
          "title": "Lecture 7: File I/O",
          "chapter_length": 5,
          "content": [
            {
              "tag_line": "Chapter 1: Reading from and writing to files",
              "title": "Reading from and writing to files",
              "page_length": 1,
              "page1": {
                "tap1":
                '''Do you know, you can read and write to files with Lua? Well, now you know. Let's see how's it done.
                      To read from a file in Lua, you typically follow these steps:
                      Open the file in read mode using the io.open function.
                      Read the content from the file using the file:read method.
                      Close the file using the file:close method.
                      Make sure you follow these steps. Here is an example for your clear understanding:
                            ''',
                "tap2": '''<h5>-- Opening the file in read mode
                          local file = io.open("input.txt", "r")
                          if file then
                              -- Reading and printing each line from the file
                              for line in file:lines() do
                                  print(line)
                              end
                              
                              -- Closing the file
                              file:close()
                          else
                              print("Error opening the file.")
                          end
                        </h5> ''',
                "tap3": '''Now let's see how to write in files.
                      To write to a file in Lua, you can follow these steps:
                      Open the file in write mode using the io.open function.
                      Write the content to the file using the file:write method.
                      Close the file using the file:close method.

                            ''',
                "tap4": '''<h5>-- Opening the file in write mode
                            local file = io.open("output.txt", "w")
                            if file then
                                -- Writing content to the file
                                file:write("Hello, Lua!\n")
                                file:write("This is an example of file I/O.")
                                
                                -- Closing the file
                                file:close()
                            else
                                print("Error opening the file.")
                            end
                        </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 2: Working with file handles and modes",
              "title": "Working with file handles and modes",
              "page_length": 1,
              "page1": {
                "tap1":
                '''When opening a file, you specify the mode that determines how the file will be accessed. Some common modes include:
                "r": Read mode (default). Opens the file for reading.
                "w": Write mode. Opens the file for writing, and truncates the file if it exists.
                "a": Append mode. Opens the file for writing, but doesn't truncate the file.
                "b": Binary mode. Used along with other modes to indicate binary file access.
                ''',
              },
            },
            {
              "tag_line": "Chapter 3: Seventh Chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question': 'How do you typically read from a file in Lua?',
              'answer':
              'Opening the file using io.open in read mode and using the file:read method.',
              'options': [
                'Using the file.read function.',
                'Using the io.read function.',
                'Opening the file using io.open in read mode and using the file:read method.',
                "Creating a new variable and assigning the file's content to it."
              ]
            },
            {
              'question': 'What is the purpose of the io.open function in Lua?',
              'answer': 'To open a file for reading or writing.',
              'options': [
                "To execute a file's contents.",
                "To define a new file.",
                'To open a file for reading or writing.',
                'To close a file.'
              ]
            },
            {
              'question':
              'Which method is used to read the content of a file in Lua?',
              'answer': ' file:read',
              'options': ['file.read', 'file:read', 'io.read', 'io.readfile']
            },
            {
              'question': 'What is the purpose of the file:close() method?',
              'answer': 'To properly close the file after reading or writing.',
              'options': [
                'To delete the file.',
                'To move the file.',
                'To write content to the file.',
                'To properly close the file after reading or writing.'
              ]
            },
            {
              'question':
              'Which mode is used to open a file for writing in Lua?',
              'answer': '"w',
              'options': ['"r', '"w', '"a', '"b']
            },
          ]
        },
        {
          "title": "Lecture 8: Error Handling and Debugging",
          "chapter_length": 4,
          "content": [
            {
              "tag_line": "Chapter 1: Understanding Lua errors and exception",
              "title": "Understanding Lua erros and exception",
              "page_length": 1,
              "page1": {
                "tap1":
                "We all have faced errors (not talking about life). Let's see some of the common error faced by programmers.",
                "tap2":
                '''<h3>1.Syntax Error:</h3><br>These occur when your code violates the rules of the Lua syntax. For example, missing parentheses or unmatched quotes can lead to syntax errors.<br><h5>-- Syntax error example
                    print("Hello, world!</h5> ''',
                "tap3":
                '''<h3>2.Runtime Error:</h3><br>These errors occur during the execution of your program. They might arise from attempting to perform an operation that's not allowed, such as dividing by zero or trying to access a nil value.<br><h5>-- Runtime error example
                    local x = 10 / 0</h5> ''',
                "tap4":
                '''<h3>3.Logical Error:</h3><br>These errors don't cause the program to crash, but they lead to unexpected or incorrect behavior due to flawed logic.<br><h5>-- Logical error example
                      local temperature = 100
                      if temperature < 0 then
                          print("It's cold.")
                      elseif temperature < 30 then
                          print("It's warm.")
                      elseif temperature < 100 then
                          print("It's hot.")
                      end</h5> ''',
              },
            },
            {
              "tag_line": "Chapter 2: Using assert and error messages",
              "title": "Using assert and error messages",
              "page_length": 1,
              "page1": {
                "tap1":
                '''We know about the errors. Now, time to handle them. First, let's use assert function.
                    The assert function is a common tool used for debugging and error handling. It takes a condition and an optional error message as its arguments. If the condition evaluates to false, an error message is displayed, and the program stops. This helps catch issues early during development.

                          ''',
                "tap2": '''Example:<br><h5>local value = 5
                        assert(value > 10, "Value must be greater than 10")
                        -- If the condition is false, the program will stop and display the error message
                        </h5> ''',
                "tap3":
                "Also, we use the error function to generate and display custom error messages. This can help provide more specific information about the nature of the error, making it easier to locate and fix the problem.",
                "tap4": '''Example:<br><h5>local age = -5
                          if age < 0 then
                              error("Age cannot be negative")
                          end
                        </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 4:Eigth chapter Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
              'quiz': [
                {
                  'question':
                  'Which type of error occurs when code violates the rules of the Lua syntax?',
                  'answer': 'Syntax Error',
                  'options': [
                    'Runtime Error',
                    'Logical Error',
                    'Syntax Error',
                    'Execution Error'
                  ]
                },
                {
                  'question':
                  'What type of error occurs during the execution of a program and might involve dividing by zero?',
                  'answer': 'Runtime Error',
                  'options': [
                    'Runtime Error',
                    'Logical Error',
                    'Syntax Error',
                    'Execution Error'
                  ]
                },
                {
                  'question':
                  'What is the purpose of using the assert function in Lua?',
                  'answer':
                  'To check if a given condition is true and display an error if not.',
                  'options': [
                    'To catch runtime errors and handle them gracefully.',
                    'To display syntax errors during program execution.',
                    'To check if a given condition is true and display an error if not.',
                    'To provide custom error messages for logical errors.'
                  ]
                },
                {
                  'question': 'How does the assert function work in Lua?',
                  'answer':
                  ' It halts program execution if the given condition is true.',
                  'options': [
                    'It displays syntax errors during program execution.',
                    ' It halts program execution if the given condition is true.',
                    'It catches logical errors and corrects them automatically.',
                    ' It generates random errors for testing purposes.'
                  ]
                },
                {
                  'question':
                  'What is the primary purpose of the error function in Lua?',
                  'answer':
                  'To display error messages and stop program execution if a condition is met.',
                  'options': [
                    'To generate random errors during program execution.',
                    'To catch syntax errors and handle them gracefully.',
                    'To display error messages and stop program execution if a condition is met.',
                    'To provide information about runtime errors to the user.'
                  ]
                },
                {
                  'question':
                  'What will be the outcome of the following line of code: assert(value > 10, "Value must be greater than 10")?',
                  'answer':
                  'The program will halt and display "Value must be greater than 10".',
                  'options': [
                    'The program will display "Value must be greater than 10" and continue execution.',
                    'The program will crash and display a runtime error.',
                    'The program will halt and display "Value must be greater than 10".',
                    'The program will continue execution without any output.'
                  ]
                },
              ]
            },
          ],
        },
        {
          "title": "Lecture 9: Lua Standard Libraries ",
          "chapter_length": 5,
          "content": [
            {
              "tag_line":
              "Chapter 1:  math library for mathematical operations",
              "title": "  math library for mathematical operations",
              "page_length": 1,
              "page1": {
                "tap1":
                "The library as the name suggests provides mathematical functions and constants. Let's see how to use it:",
                "tap2": '''<h5>-- Calculate the square root
                        local num = 25
                        local sqrtValue = math.sqrt(num)
                        print(sqrtValue)  -- Output: 5.0
                        -- Calculate the sine of an angle in radians
                        local angle = math.pi / 6
                        local sineValue = math.sin(angle)
                        print(sineValue)  -- Output: 0.5
                        -- Generate a random number between 0 and 1
                        local randomValue = math.random()
                        print(randomValue)
                  </h5> ''',
              },
            },
            {
              "tag_line":
              "Chapter 2:os library for operating system interactions.",
              "title":
              "Chapter 2:os library for operating system interactions.",
              "page_length": 1,
              "page1": {
                "tap1":
                "The os library provides functions related to operating system interactions. Here's an example:",
                "tap2": '''<h5>-- Get the current date and time
                              local currentTime = os.date()
                              print(currentTime)
                              -- Execute a system command
                              os.execute("ls -l")
                  </h5> ''',
              },
            },
            {
              "tag_line": "Chapter 3:Chapter nine Quiz",
              "title": "Quiz",
              "page_length": 1,
              "page1": {},
            },
          ],
          'quiz': [
            {
              'question':
              "Which Lua library provides mathematical functions and constants?",
              'answer': 'math',
              'options': ['string', 'io', 'os', 'math']
            },
            {
              'question':
              "How can you calculate the square root of a number num using the math library?",
              'answer': 'math.sqrt(num)',
              'options': [
                ' math.square_root(num)',
                ' math.sqrt(num)',
                'math.root(num)',
                'math.calculate_square_root(num)'
              ]
            },
            {
              'question':
              "What does the math.sin(angle) function calculate in Lua?",
              'answer': 'The sine of an angle in radians',
              'options': [
                'The cosine of an angle in radians',
                'The tangent of an angle in radians',
                'The sine of an angle in radians',
                "The angle's square root value"
              ]
            },
            {
              'question':
              "What does the math.random() function in Lua generate?",
              'answer': 'A random floating-point number between 0 and 1',
              'options': [
                'A random integer',
                'A random floating-point number between 0 and 1',
                'A random string',
                ' A random boolean value'
              ]
            },
            {
              'question':
              "Which Lua library provides functions related to operating system interactions?",
              'answer': 'os',
              'options': ['string', 'io', 'os', 'math']
            },
            {
              'question':
              "How can you get the current date and time using the os library?",
              'answer': 'os.date()',
              'options': [
                'os.get_current_time()',
                ' os.time()',
                'os.date()',
                'os.get_datetime()'
              ]
            },
          ]
        },
      ]
    }
  ];

  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



// {
// "title": "Lecture 3: Statement",
// "chapter_length": 3,
// "content": [
// {
// "tag_line": "Chapter 1: ",
// "title": "",
// "page_length": 4,
// "page1": {
// "tap1":
// "",
// "tap2":
// "",
// "tap3":
// "",
// },
// "page2": {
// "tap1":
// "",
// "tap2":
// "",
// "tap3":
// "",},
// "page3": {
// "tap1":
// "",
// "tap2":
// "",
// "tap3":
// "",
// },
// "page4": {
// "tap1":
// "",
// "tap2":
// "",
// "tap3":
// "",
// },
// },
// {
// "tag_line": "Chapter 6: Quiz",
// "title": "Quiz",
// "page_length": 1,
// "page1": {},
// },
// ]
// },
