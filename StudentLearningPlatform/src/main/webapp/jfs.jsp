<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Full Stack Development</title>
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

<div class="container-fluid">
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
      <a href="studentPortal.jsp" class="btn btn-success my-2 my-sm-0">Back to Portal</a>
    </div>
    </nav>
    <div class="row">
        <!-- Left Sidebar -->
        <div class="col-md-3 topic-list bg-light p-3">
            <h4><strong>Java Full Stack Topics</strong></h4>
            <a href="#intro">Introduction</a>
            <a href="#syntax">Basic Syntax</a>
            <a href="#datatypes">Data Types & Variables</a>
            <a href="#control">Control Statements</a>
            <a href="#oops">OOPs Concepts</a>
            <a href="#collections">Collections Framework</a>
            <a href="#exceptions">Exception Handling</a>
            <a href="#multithreading">Multithreading</a>
            <a href="#jdbc">JDBC</a>
            <a href="#servlets">Servlets</a>
            <a href="#jsp">JSP</a>
            <a href="#hibernate">Hibernate</a>
            <a href="#spring">Spring Framework</a>
            <a href="#frontend">Frontend (HTML, CSS, JS)</a>
            <a href="#database">Database Integration</a>
        </div>

        <!-- Center Content -->
        <div class="col-md-6 p-4">

            <h2 id="intro">Java Full Stack Development</h2>
            <p>Java Full Stack Development means developing both the frontend (UI) and backend (server and database) of an application using Java technologies. 
               It involves Core Java, Advanced Java (JDBC, Servlets, JSP), frameworks like Spring and Hibernate, and frontend tools such as HTML, CSS, and JavaScript.</p>

            <!-- Basic Syntax -->
            <div id="syntax" class="topic-section">
                <h3>1. Basic Syntax</h3>
                <p>Java syntax is similar to C/C++ but with enhanced OOPs features. Every program must have a <code>main()</code> method where execution starts.</p>
                <pre>
public class HelloJava {
    public static void main(String[] args) {
        System.out.println("Hello Java Full Stack!");
    }
}
                </pre>
            </div>

            <!-- Data Types -->
            <div id="datatypes" class="topic-section">
                <h3>2. Data Types and Variables</h3>
                <p>Java is a statically typed language. Data types are divided into primitive and non-primitive.</p>
                <ul>
                    <li><strong>Primitive:</strong> int, float, double, char, boolean</li>
                    <li><strong>Non-Primitive:</strong> String, Arrays, Classes</li>
                </ul>
                <pre>
int age = 22;
double marks = 89.5;
String name = "Rekha";
System.out.println(name + " scored " + marks);
                </pre>
            </div>

            <!-- Control Statements -->
            <div id="control" class="topic-section">
                <h3>3. Control Statements</h3>
                <p>Used to control the flow of execution — includes conditional, looping, and branching statements.</p>
                <pre>
int n = 5;
if(n > 0)
    System.out.println("Positive");
else
    System.out.println("Negative");

for(int i=1; i<=3; i++)
    System.out.println("Iteration: " + i);
                </pre>
            </div>

            <!-- OOPs -->
            <div id="oops" class="topic-section">
                <h3>4. OOPs Concepts</h3>
                <p>Object-Oriented Programming allows modular, reusable, and scalable code. The 4 main concepts are:</p>
                <ul>
                    <li><strong>Encapsulation:</strong> Wrapping data and methods together in a class.</li>
                    <li><strong>Inheritance:</strong> Reusing properties of another class.</li>
                    <li><strong>Polymorphism:</strong> Ability of an object to take many forms (method overloading/overriding).</li>
                    <li><strong>Abstraction:</strong> Hiding internal details and showing only functionality.</li>
                </ul>
                <pre>
class Animal {
    void sound() { System.out.println("Animal sound"); }
}
class Dog extends Animal {
    void sound() { System.out.println("Bark"); }
}
public class Test {
    public static void main(String[] args) {
        Animal a = new Dog();
        a.sound();
    }
}
                </pre>
            </div>

            <!-- Collections -->
            <div id="collections" class="topic-section">
                <h3>5. Collections Framework</h3>
                <p>Java Collections Framework provides data structures to store, manipulate, and access data efficiently.</p>
                <ul>
                    <li><code>List</code> – Ordered, allows duplicates (e.g., ArrayList)</li>
                    <li><code>Set</code> – Unordered, no duplicates (e.g., HashSet)</li>
                    <li><code>Map</code> – Key-value pairs (e.g., HashMap)</li>
                </ul>
                <pre>
import java.util.*;
public class Example {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Java");
        list.add("Spring");
        list.forEach(System.out::println);
    }
}
                </pre>
            </div>

            <!-- Exception Handling -->
            <div id="exceptions" class="topic-section">
                <h3>6. Exception Handling</h3>
                <p>Exception handling ensures smooth program execution even when runtime errors occur.</p>
                <pre>
try {
    int a = 10 / 0;
} catch (ArithmeticException e) {
    System.out.println("Error: " + e.getMessage());
} finally {
    System.out.println("Program ends gracefully.");
}
                </pre>
            </div>

            <!-- Multithreading -->
            <div id="multithreading" class="topic-section">
                <h3>7. Multithreading</h3>
                <p>Multithreading allows concurrent execution of two or more parts of a program for better performance.</p>
                <pre>
class MyThread extends Thread {
    public void run() { System.out.println("Thread running..."); }
}
public class Main {
    public static void main(String[] args) {
        MyThread t1 = new MyThread();
        t1.start();
    }
}
                </pre>
            </div>

            <!-- JDBC -->
            <div id="jdbc" class="topic-section">
                <h3>8. JDBC (Java Database Connectivity)</h3>
                <p>JDBC connects Java programs to databases like MySQL.</p>
                <pre>
import java.sql.*;
class DBExample {
    public static void main(String[] args) throws Exception {
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/b612", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM student");
        while(rs.next())
            System.out.println(rs.getString("sname"));
        con.close();
    }
}
                </pre>
            </div>

            <!-- Servlets -->
            <div id="servlets" class="topic-section">
                <h3>9. Servlets</h3>
                <p>Servlets handle HTTP requests and responses on the server side.</p>
                <pre>
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String user = req.getParameter("username");
        res.getWriter().println("Welcome " + user);
    }
}
                </pre>
            </div>

            <!-- JSP -->
            <div id="jsp" class="topic-section">
                <h3>10. JSP (Java Server Pages)</h3>
                <p>JSP allows embedding Java code in HTML for dynamic web pages.</p>
                <pre>
<%@ page language="java" %>
<html>
<body>
    <h2>Welcome, <%= request.getParameter("username") %></h2>
</body>
</html>
                </pre>
            </div>

            <!-- Hibernate -->
            <div id="hibernate" class="topic-section">
                <h3>11. Hibernate</h3>
                <p>Hibernate is an ORM (Object Relational Mapping) framework that maps Java objects to database tables.</p>
                <pre>
@Entity
public class Student {
    @Id
    private int id;
    private String name;
    private String branch;
}
                </pre>
            </div>

            <!-- Spring -->
            <div id="spring" class="topic-section">
                <h3>12. Spring Framework</h3>
                <p>Spring provides dependency injection, AOP, and MVC architecture for enterprise Java apps.</p>
                <pre>
@Controller
public class HomeController {
   @RequestMapping("/home")
   public String home() {
       return "home.jsp";
   }
}
                </pre>
            </div>

            <!-- Frontend -->
            <div id="frontend" class="topic-section">
                <h3>13. Frontend (HTML, CSS, JS)</h3>
                <p>Frontend defines the user interface. HTML creates structure, CSS styles it, and JS adds interactivity.</p>
                <pre>
<html>
  <body>
    <button onclick="alert('Hello Java Full Stack!')">Click Me</button>
  </body>
</html>
                </pre>
            </div>

            <!-- Database -->
            <div id="database" class="topic-section">
                <h3>14. Database Integration</h3>
                <p>Databases like MySQL, Oracle, or PostgreSQL are connected via JDBC, Hibernate, or Spring Data JPA.</p>
                <pre>
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {}
                </pre>
            </div>
        </div>

        <!-- Right column -->
        <div class="col-md-3"></div>
    </div>
</div>

</body>
</html>
