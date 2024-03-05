<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
    <!-- jstl core tag -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Employees</title>
    <link rel="stylesheet" href="/assets/css/listofemployees.css">
    <style>
        th{
            border-radius: 5px;
            /* overflow: visible;
            max-width: min-content; */
            overflow-wrap: break-word;
            background-color: rgb(181, 179, 179);
        }
        td{
            height: 30px;
            overflow-wrap: break-word;
        }
        table{
            box-sizing: content-box;
            
        }
        /* tbody tr:nth-child(2n+1)
        {
            background-color: rgb(173, 147, 147);
        }
        tbody tr:nth-child(2n)
        {
            background-color: rgb(201, 194, 194);
        } */
        tr{
            height: max-content;
        }
        thead th{
            height: 60px;
            font-size: 1em;
            overflow-wrap: break-word;
        }
        tfoot th{
            height: 35px;font-size: 1em;
            overflow: visible;
            max-width: min-content;
        }
        
    </style>
</head>
<body>
    ${message}
    <table border="5px" style="border-radius: 3%;border-color: rgb(138, 131, 131);table-layout: fixed;width: 99%;
    display: table;table-layout: fixed;border-collapse: separate;margin: 0px auto;">
    <caption style="font-size: x-large;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;font-weight: 800;color: rgb(151, 117, 117);word-spacing: 5px;letter-spacing: 1.5px;text-decoration-line: underline;padding: 5px 0px 20px 0px;">List Of Employees</caption>
    <tr>
        <thead>
            <th>Employee Id</th>
            <th>First <br> Name</th>
            <th>Last <br> Name</th>

            <%
      String sal=(String)session.getAttribute("role");
      if(sal.equalsIgnoreCase("Admin"))
      { %>

            
            <th>Salary</th>

            <%  }

            %>   
            <th>Email Id</th>

            <%
      String un=(String)session.getAttribute("role");
      if(un.equalsIgnoreCase("Admin"))
      { %>
            <th>Username</th>
            <%  }

            %> 
            
            <%
      String pw=(String)session.getAttribute("role");
      if(pw.equalsIgnoreCase("Admin"))
      { %>
            <th>Password</th>

            <%  }

            %> 
            <th>Gender</th>
            <th>Department</th>
            <th>Mobile <br>Number</th>
            <th>Role</th>

            <%
            String st=(String)session.getAttribute("role");
      if(st.equalsIgnoreCase("Admin"))
      { %>
            <th>Status</th>

            <%  }

            %> 

            <%
            String sq=(String)session.getAttribute("role");
      if(sq.equalsIgnoreCase("Admin"))
      { %>
            <th>Security Question</th>

            <%  }

            %> 

            <%
            String ans=(String)session.getAttribute("role");
      if(ans.equalsIgnoreCase("Admin"))
      { %>
            <th>Security Answer</th>

            <%  }

            %>
            <th>Date Of Birth</th>
            <th>Created At</th>
            <th>Edit</th>
            <th>Delete</th>
        </thead>
        <tbody>
            <c:forEach var="employees" items="${employees}">
            <tr>
                <td><c:out value="${employees.employeeId}" /></td>
                <td><c:out value="${employees.firstName}" /></td>
                <td><c:out value="${employees.lastName}" /></td>

                <%
      String salary=(String)session.getAttribute("role");
      if(salary.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.salary}" /></td>

                <%  }

                %>
                <td><c:out value="${employees.emailId}" /></td>

                <%
                String username=(String)session.getAttribute("role");
      if(username.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.username}" /></td>

                <%  }

                %>

                <%
                String password=(String)session.getAttribute("role");
      if(password.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.password}" /></td>

                <%  }

                %>
                <td><c:out value="${employees.gender}" /></td>
                <td><c:out value="${employees.department}" /></td>
                <td><c:out value="${employees.mobileNumber}" /></td>
                <td><c:out value="${employees.role}" /></td>

                <%
                String status=(String)session.getAttribute("role");
      if(status.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.status}" /></td>

                <%  }

                %>

                <%
                String question=(String)session.getAttribute("role");
      if(question.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.question}" /></td>

                <%  }

                %>

                <%
                String answer=(String)session.getAttribute("role");
      if(answer.equalsIgnoreCase("Admin"))
      { %>
                <td><c:out value="${employees.answer}" /></td>

                <%  }

                %>
                <td><c:out value="${employees.birth_date}" /></td>
                <td><c:out value="${employees.created_at}" /></td>
                <td><a href="/editemployee?emp=${employees.employeeId}&msg=NULL"><button type="button" onclick="return confirm('Do you want to edit this record?')">Edit</button></a></td>
                <td><a href="/deleteemployeebyid?id=${employees.employeeId}"><button type="button" onclick="return confirm('Do you want to delete this record?')">Delete</button></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th>Total : </th>
                <th></th>
                <th></th>
                <th></th>
                <%
      String salary=(String)session.getAttribute("role");
      if(salary.equalsIgnoreCase("Admin"))
      { %>
                <th></th>
                <%  }

                %>
                <th></th>
<%
                String username=(String)session.getAttribute("role");
      if(username.equalsIgnoreCase("Admin"))
      { %>
                <th></th>

                <%  }

                %>

                <%
                String password=(String)session.getAttribute("role");
      if(password.equalsIgnoreCase("Admin"))
      { %>
                <th></th>

                <%  }

                %>
                <th></th>
                <th></th>
                <th></th>
                <th></th>

                <%
                String status=(String)session.getAttribute("role");
      if(status.equalsIgnoreCase("Admin"))
      { %>
                <th></th>

                <%  }

                %>

                <%
                String question=(String)session.getAttribute("role");
      if(question.equalsIgnoreCase("Admin"))
      { %>
                <th></th>

                <%  }

                %>

                <%
                String answer=(String)session.getAttribute("role");
      if(answer.equalsIgnoreCase("Admin"))
      { %>
                <th></th>

                <%  }

                %>
                <th></th>
                <th></th>
                <th></th>

            </tr>
        </tfoot>
    </table>
</body>
</html>