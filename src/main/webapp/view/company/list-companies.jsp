<%@ page import="com.company.model.entities.Company"%>
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
        <h4>List of all companies</h4>
        <div class="table-container">
            <table border="1">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Name</td>
                        <td>Info</td>
                    </tr>
                </thead>
                <tbody>
                <%
                    List<Company> companies = (ArrayList<Company>) request.getAttribute("companies");
                    for(Company company: companies){
                        String id = company.getId().toString();
                        String name = company.getName();
                        String info = company.getInfo();

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + name + "</td>");
                        out.println("<td>" + info + "</td>");
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