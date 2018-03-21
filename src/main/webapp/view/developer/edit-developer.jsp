<%@ page import="com.company.model.entities.Developer" %>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Edit developer</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Edit developer</h4>
            <div class="form-container">
                <form action="${pageContext.request.contextPath}/edit-developer" method="POST">
                    <div class="form-group">
                        <label for="developerId">Id</label>
                        <input type="text" class="form-control" name="developerId" placeholder="Developer id"
                            value="${developer.id}"/>
                    </div>
                    <div class="form-group">
                        <label for="developerFirstName">First name</label>
                        <input type="text" class="form-control" name="developerFirstName" placeholder="Developer first name"
                            value="${developer.firstName}"/>
                    </div>
                    <div class="form-group">
                        <label for="developerLastName">Last name</label>
                        <input type="text" class="form-control" name="developerLastName" placeholder="Developer last name"
                            value="${developer.lastName}"/>
                    </div>
                    <div class="form-group">
                        <label for="developerAge">Age</label>
                        <input type="text" class="form-control" name="developerAge" placeholder="Developer age"
                            value="${developer.age}"/>
                    </div>
                    <fieldset class="form-group">
                        <legend>Gender</legend>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="developerGender" value="MALE"
                                    ${developer.gender == 'MALE' ? 'checked' : ''}> Male
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="developerGender" value="FEMALE"
                                    ${developer.gender == 'FEMALE' ? 'checked' : ''}> Female
                            </label>
                        </div>
                    </fieldset>
                    <div class="form-group">
                        <label for="developerSalary">Salary</label>
                        <input type="text" class="form-control" name="developerSalary" placeholder="Developer salary"
                            value="${developer.salary}"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Execute</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>