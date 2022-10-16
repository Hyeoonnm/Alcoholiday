<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Alcoholiday</title>
</head>
<body>
<h3>Alcoholiday Alcohol List</h3>
<form method="get">
    <div>

        <div>
            <select name="kind">
                <option value="1">alcoholNum</option>
                <option value="2">alcoholName</option>
                <option value="3">alcoholPublisher</option>
                <option value="4">alcoholPrice</option>
            </select>
        </div>

        <div>
            <input type="text" name="keyword">
            <button>search</button>
        </div>
    </div>
</form>
<table>
    <thead>
    <tr>
        <th>Alcohol_Num</th>

        <th>Alcohol_Name</th>

        <th>Alcohol_Publisher</th>

        <th>Alcohol_Price</th>

        <th>update</th>

        <th>delete</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${alcohol}" var="alcohol">
        <tr>
            <td>${alcohol.alcoholNum}</td>

            <td>${alcohol.alcoholName}</td>

            <td>${alcohol.alcoholPublisher}</td>

            <td>${alcohol.alcoholPrice}</td>

            <td>
                <p><a href="update/${alcohol.alcoholNum}">update</a></p>
            </td>

            <td>
                <p><a href="delete/${alcohol.alcoholNum}">delete</a></p>
            </td>
        </tr>

    </c:forEach>

    </tbody>
</table>
<button><a href="./add">Add</a></button>
<button><a href="/">Main</a></button>
</body>
</html>