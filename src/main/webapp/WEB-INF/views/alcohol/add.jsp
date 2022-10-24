
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add new drink</title>
</head>
<body>
    <div>

        <div>
            <h2>Add New drink</h2>
        </div>

        <div>
            <form method="post">
                <div>
                    <label>Drink Name : </label>
                    <input type="text" name="stuffName">
                </div>

                <div>
                    <label>Drink Publisher : </label>
                    <input type="text" name="stuffPublisher">
                </div>

                <div>
                    <label>Drink Price : </label>
                    <input type="text" name="stuffPrice">
                </div>

                <div>
                    <button>Drink Thumbnail</button>
                </div>

                <div>
                    <label>Drink Content</label>
                    <input type="text" name="DetailContent">
                </div>

                <button>OK</button>
                <button><a href="./drink">Cancel</a></button>
            </form>
        </div>
    </div>
</body>
</html>
