<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>Drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>model</td>
        <td>MANUFACTURER</td>
        <td>driver</td>
        <td>LICENSE NUMBER</td>

    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
