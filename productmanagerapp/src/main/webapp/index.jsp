<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="my" uri="http://example.com/tags/greeting" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GreetingTag Demo</title>
</head>
<body>
    <h2>GreetingTag Demo</h2>

    <p><my:greet name="John" timeOfDay="morning"/></p>
    <p><my:greet name="Sarah"/></p>
    <p><my:greet name="Mike" timeOfDay="evening"/></p>

    <hr/>
    <!-- Extra tests (optional) -->
    <p><my:greet name="Megha" timeOfDay="night"/></p>
    <p><my:greet name="Alex" timeOfDay="unknownValue"/></p>
</body>
</html>