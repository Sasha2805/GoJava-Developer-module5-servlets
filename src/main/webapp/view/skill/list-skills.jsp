<%@ page import="com.company.model.entities.Skill"%>
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
                        <td>Skill</td>
                        <td>Skill level</td>
                    </tr>
                </thead>
                <tbody>
                <%
                    List<Skill> skills = (ArrayList<Skill>) request.getAttribute("skills");
                    for(Skill skill: skills){
                        String id = skill.getId().toString();
                        String skillName = skill.getSkill();
                        String skillLevel = skill.getSkillLevel().toString();

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + skillName + "</td>");
                        out.println("<td>" + skillLevel + "</td>");
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