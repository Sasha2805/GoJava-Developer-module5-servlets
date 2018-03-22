<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Add developer</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Add developer</h4>
            <div class="form-container">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/add-developer" method="POST">
                        <div class="form-group">
                            <label for="developerFirstName">First name</label>
                            <input type="text" class="form-control" name="developerFirstName" placeholder="Developer first name">
                        </div>
                        <div class="form-group">
                            <label for="developerLastName">Last name</label>
                            <input type="text" class="form-control" name="developerLastName" placeholder="Developer last name">
                        </div>
                        <div class="form-group">
                            <label for="developerAge">Age</label>
                            <input type="text" class="form-control" name="developerAge" placeholder="Developer age">
                        </div>
                        <fieldset class="form-group">
                            <legend>Gender</legend>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="developerGender" value="MALE" checked>
                                    Male
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="developerGender" value="FEMALE">
                                    Female
                                </label>
                            </div>
                        </fieldset>
                        <div class="form-group">
                            <label for="developerSalary">Salary</label>
                            <input type="text" class="form-control" name="developerSalary" placeholder="Developer salary">
                        </div>
                        <button type="submit" class="btn btn-primary">Execute</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>