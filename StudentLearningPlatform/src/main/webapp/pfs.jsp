<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Python Full Stack Development</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    .navbar-brand {
    	  font-weight: bold;
      	  font-size: 1.5rem;
   		 }
        body {
            scroll-behavior: smooth;
            font-family: Arial, sans-serif;
        }
        .topic-list a {
            display: block;
            margin-bottom: 8px;
            color: #007bff;
            text-decoration: none;
        }
        .topic-list a:hover {
            text-decoration: underline;
        }
        h3 {
            color: #007bff;
            margin-top: 40px;
        }
        pre {
            background-color: #f8f9fa;
            padding: 10px;
            border-left: 3px solid #007bff;
        }
        .topic-section {
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
 <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
    <a class="navbar-brand" href="#">LearningPortal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <!-- Home -->
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
        </li>

        <!-- Description 
        <li class="nav-item">
          <a class="nav-link" href="#">Description</a>
        </li> -->

        <!-- Tutorials Dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="tutorialsDropdown" role="button" data-toggle="dropdown">
            Tutorials
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="studentPortal.jsp">Java Full Stack</a>
            <a class="dropdown-item" href="studentPortal.jsp">Python Full Stack</a>
          </div>
        </li>
      </ul>

      <!-- Register Button -->
      <a href="studentPortal.jsp" class="btn btn-success my-2 my-sm-0">Back to PORTAL!!</a>
    </div>
    </nav>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 topic-list bg-light p-3">
            <h4><strong>Python Full Stack Topics</strong></h4>
            <a href="#intro">Introduction</a>
            <a href="#syntax">Basic Syntax</a>
            <a href="#datatypes">Data Types</a>
            <a href="#operators">Operators</a>
            <a href="#control">Control Statements</a>
            <a href="#functions">Functions</a>
            <a href="#oops">OOPs Concepts</a>
            <a href="#exceptions">Exception Handling</a>
            <a href="#modules">Modules & Packages</a>
            <a href="#filehandling">File Handling</a>
            <a href="#flask">Flask Framework</a>
            <a href="#django">Django Framework</a>
            <a href="#database">Database Integration</a>
            <a href="#frontend">Frontend (HTML, CSS, JS)</a>
            <a href="#deployment">Deployment</a>
        </div>

        <!-- Center Content -->
        <div class="col-md-6 p-4">
            <h2 id="intro">Python Full Stack Development</h2>
            <p>Python Full Stack Development involves building both frontend and backend of web applications using Python frameworks like Flask or Django for the server-side and HTML, CSS, and JavaScript for the client-side. 
               Python’s readability, large libraries, and frameworks make it one of the most popular languages for web development.</p>

            <!-- Syntax -->
            <div id="syntax" class="topic-section">
                <h3>1. Basic Syntax</h3>
                <p>Python uses indentation to define code blocks and doesn’t require semicolons. It is dynamically typed and interpreted.</p>
                <pre>
print("Hello, Python Full Stack!")
x = 10
y = 5
print("Sum:", x + y)
                </pre>
            </div>

            <!-- Data Types -->
            <div id="datatypes" class="topic-section">
                <h3>2. Data Types</h3>
                <p>Python supports multiple built-in data types such as int, float, string, list, tuple, set, and dict.</p>
                <pre>
a = 10          # int
b = 12.5        # float
c = "Python"    # string
lst = [1, 2, 3] # list
tup = (4, 5, 6) # tuple
dct = {"name": "Rekha", "age": 22} # dictionary
                </pre>
            </div>

            <!-- Operators -->
            <div id="operators" class="topic-section">
                <h3>3. Operators</h3>
                <p>Operators are used to perform operations on variables and values.</p>
                <ul>
                    <li>Arithmetic: +, -, *, /, %</li>
                    <li>Comparison: ==, !=, &lt;, &gt;</li>
                    <li>Logical: and, or, not</li>
                </ul>
                <pre>
x, y = 5, 3
print(x + y)
print(x > y and y < 10)
                </pre>
            </div>

            <!-- Control Statements -->
            <div id="control" class="topic-section">
                <h3>4. Control Statements</h3>
                <p>Python provides if-else, for, and while loops for controlling execution flow.</p>
                <pre>
num = 4
if num % 2 == 0:
    print("Even")
else:
    print("Odd")

for i in range(5):
    print(i)
                </pre>
            </div>

            <!-- Functions -->
            <div id="functions" class="topic-section">
                <h3>5. Functions</h3>
                <p>Functions in Python are defined using the <code>def</code> keyword. They help organize reusable blocks of code.</p>
                <pre>
def greet(name):
    return f"Hello, {name}!"

print(greet("Python Developer"))
                </pre>
            </div>

            <!-- OOPs Concepts -->
            <div id="oops" class="topic-section">
                <h3>6. OOPs Concepts</h3>
                <p>Python supports object-oriented programming with classes and objects. Concepts include encapsulation, inheritance, and polymorphism.</p>
                <pre>
class Employee:
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def display(self):
        print("Name:", self.name, "Salary:", self.salary)

class Manager(Employee):
    def show(self):
        print("Manager:", self.name)

m = Manager("Rekha", 50000)
m.display()
m.show()
                </pre>
            </div>

            <!-- Exception Handling -->
            <div id="exceptions" class="topic-section">
                <h3>7. Exception Handling</h3>
                <p>Python uses try-except blocks to handle runtime errors gracefully.</p>
                <pre>
try:
    x = 10 / 0
except ZeroDivisionError as e:
    print("Error:", e)
finally:
    print("This block always runs")
                </pre>
            </div>

            <!-- Modules -->
            <div id="modules" class="topic-section">
                <h3>8. Modules and Packages</h3>
                <p>Modules are files containing Python code. Packages are directories with an <code>__init__.py</code> file.</p>
                <pre>
# math_module.py
def add(a, b):
    return a + b

# main.py
import math_module
print(math_module.add(5, 10))
                </pre>
            </div>

            <!-- File Handling -->
            <div id="filehandling" class="topic-section">
                <h3>9. File Handling</h3>
                <p>Python makes reading and writing files simple using <code>open()</code>.</p>
                <pre>
with open("demo.txt", "w") as f:
    f.write("Python Full Stack Example")

with open("demo.txt", "r") as f:
    print(f.read())
                </pre>
            </div>

            <!-- Flask -->
            <div id="flask" class="topic-section">
                <h3>10. Flask Framework</h3>
                <p>Flask is a lightweight Python web framework used for building small to medium-sized web apps.</p>
                <pre>
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to Flask!"

if __name__ == '__main__':
    app.run(debug=True)
                </pre>
            </div>

            <!-- Django -->
            <div id="django" class="topic-section">
                <h3>11. Django Framework</h3>
                <p>Django is a high-level Python web framework that promotes rapid development and clean design.</p>
                <pre>
# views.py
from django.http import HttpResponse

def home(request):
    return HttpResponse("Welcome to Django Full Stack!")

# urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home),
]
                </pre>
            </div>

            <!-- Database -->
            <div id="database" class="topic-section">
                <h3>12. Database Integration</h3>
                <p>Python connects to databases like MySQL using <code>mysql.connector</code> or ORM frameworks like Django ORM.</p>
                <pre>
import mysql.connector
con = mysql.connector.connect(user='root', password='root', host='localhost', database='b612')
cur = con.cursor()
cur.execute("SELECT * FROM students")
for row in cur:
    print(row)
con.close()
                </pre>
            </div>

            <!-- Frontend -->
            <div id="frontend" class="topic-section">
                <h3>13. Frontend (HTML, CSS, JS)</h3>
                <p>Frontend handles UI/UX design using HTML for structure, CSS for styling, and JavaScript for interactivity.</p>
                <pre>
<!DOCTYPE html>
<html>
<head>
<style>
button { background-color:blue; color:white; }
</style>
</head>
<body>
<button onclick="alert('Hello Python Full Stack!')">Click Me</button>
</body>
</html>
                </pre>
            </div>

            <!-- Deployment -->
            <div id="deployment" class="topic-section">
                <h3>14. Deployment</h3>
                <p>Python web apps can be deployed on Heroku, AWS, or PythonAnywhere. Use virtual environments and WSGI for production deployment.</p>
                <pre>
# requirements.txt
Flask==2.2.2

# Gunicorn WSGI server
gunicorn app:app
                </pre>
            </div>
        </div>

        <!-- Empty Right Column -->
        <div class="col-md-3"></div>
    </div>
</div>

</body>
</html>
