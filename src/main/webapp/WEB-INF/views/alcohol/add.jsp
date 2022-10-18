<%--
  Created by IntelliJ IDEA.
  User: rkdwo
  Date: 2022-10-05
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Alcoholiday Add New Alcohol</title>
</head>
<body>
    <div>

        <div>
            <h2>Add New Alcohol</h2>
        </div>

        <div>
            <form method="post">
                <div>
                    <label>Alcohol Name : </label>
                    <input type="text" name="stuffName">
                </div>

                <div>
                    <label>Alcohol Publisher : </label>
                    <input type="text" name="stuffPublisher">
                </div>

                <div>
                    <label>Alcohol Price : </label>
                    <input type="text" name="stuffPrice">
                </div>

                <button>OK</button>
                <button><a href="../list">Cancel</a></button>
            </form>
        </div>
    </div>
</body>
</html>
