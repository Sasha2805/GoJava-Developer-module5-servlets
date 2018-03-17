<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Add skill</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>Add skill</h4>
        <div class="form-container">
            <form action="${pageContext.request.contextPath}/add-skill" method="POST">
                <div class="form-group">
                    <label for="skillName">Skill</label>
                    <input type="text" class="form-control" name="skillName" placeholder="Skill name">
                </div>
                <div class="form-group">
                    <label for="skillLevel">Skill level</label>
                    <select class="form-control" name="skillLevel">
                        <option value="JUNIOR">Junior</option>
                        <option value="MIDDLE">Middle</option>
                        <option value="SENIOR">Senior</option>
                    </select>
                  </div>
                <button type="submit" class="btn btn-primary">Execute</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>