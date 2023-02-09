<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>ask details</title>
    </head>

    <body>
        <h2>Dear Employee, Please enter your details</h2>
        <br>
        <br>

        <form:form action="showDetails" modelAttribute="employee">
            Name <form:input path="name"/>
            <br>
            Surname <form:input path="surname"/>
            <br>
            Salary <form:input path="salary"/>
            <br>
            Department <form:select path="department">
            <form:options items="${employee.departments}"/>
            </form:select>
            <br>

            <input type="submit" value="OK">
        </form:form>

    </body>

</html>