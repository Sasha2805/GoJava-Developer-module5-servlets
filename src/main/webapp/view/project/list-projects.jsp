<%@ page import="com.company.model.entities.Project"%>
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
        <h4>List of all customers</h4>
        <div class="table-container">
            <table border="1">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Name</td>
                        <td>Info</td>>
                        <td>Cost</td>
                    </tr>
                </thead>
                <tbody>
                <%
                    List<Project> projects = (ArrayList<Project>) request.getAttribute("projects");
                    for(Project project: projects){
                        String id = project.getId().toString();
                        String name = project.getName();
                        String info = project.getInfo();
                        BigDecimal cost = project.getCost();

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + name + "</td>");
                        out.println("<td>" + info + "</td>");
                        out.println("<td>" + cost + "</td>");
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