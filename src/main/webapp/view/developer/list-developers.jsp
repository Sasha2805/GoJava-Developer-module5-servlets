<%@ page import="com.company.model.entities.Developer"%>
<%@ page import="java.math.BigDecimal"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All developers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>List of all developers</h4>
        <div class="table-container">
            <table border="1">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>First name</td>
                        <td>Last name</td>
                        <td>Age</td>
                        <td>Gender</td>
                        <td>Salary</td>
                    </tr>
                </thead>
                <tbody>
                <%
                    List<Developer> developers = (ArrayList<Developer>) request.getAttribute("developers");
                    for(Developer developer: developers){
                        String id = developer.getId().toString();
                        String firstName = developer.getFirstName();
                        String lastName = developer.getLastName();
                        String age = developer.getAge().toString();
                        String gender = developer.getGender().toString();
                        BigDecimal salary = developer.getSalary();

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + firstName + "</td>");
                        out.println("<td>" + lastName + "</td>");
                        out.println("<td>" + age + "</td>");
                        out.println("<td>" + gender + "</td>");
                        out.println("<td>" + salary + "</td>");
                        out.println("</tr>");
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>