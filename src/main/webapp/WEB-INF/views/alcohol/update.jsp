<%--
  Created by IntelliJ IDEA.
  User: rkdwo
  Date: 2022-10-05
  Time: 오후 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Alcoholiday Alcohol Information</title>
</head>
<body>
<div>

    <div>
        <h2>Update Alcohol Information</h2>
    </div>

    <div>
        <form method="post">
            <div>
                <input type="text" name="stuffNum" value="${item.stuffNum}" readonly>
            </div>

            <div>
                <label>Name : </label>
                <input type="text" name="stuffName" value="${item.stuffName}">
            </div>

            <div>
                <label>Price : </label>
                <input type="text" name="stuffPrice" value="${item.stuffPrice}">
            </div>

            <button>OK</button>
            <button><a href="./dirnk">Cancel</a></button>
        </form>
    </div>
</div>

<button><a href="/main">Main</a></button>
</body>
</html>
