<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script type="text/javascript"
            src="/resources/js/bootstrap.bundle.min.js"></script>

    <style>
        a {
            text-decoration-line: none;
        }

        #logo {
            text-align: center;
            margin-top: 2em;
        }
    </style>
</head>

<body>
<div>
    <h1 id="logo"><b><a href="#" class="text-black-50">Alcoholiday</a></b></h1>
</div>
<section class="vh-70">
    <div class="container py-5 h-70">
        <div class="row d-flex justify-content-center align-items-center h-70">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">

                        <div class="mb-md-5 mt-md-4 pb-5">

                            <h2 class="fw-bold mb-2">LOGIN</h2>
                            <p class="text-white-50 mb-5">Please enter your id and password!</p>

                            <form method="post">

                                <div class="form-outline form-white mb-4">
                                    <input type="text" name="userId" id="userId" class="form-control form-control-lg"
                                           placeholder="ID"/>
                                    <label class="form-label" for="userId"/>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <input type="password" name="userPwd" id="userPwd"
                                           class="form-control form-control-lg" placeholder="Password"/>
                                    <label class="form-label" for="userPwd"/>
                                </div>

                                <button class="btn btn-outline-light px-5">LOGIN</button>
                            </form>

                            <p class="small mb-5 pb-lg-2">
                                <a class="text-white-50" href="#!">Forgot password?</a>
                            </p>

                        </div>

                        <div>
                            <p class="mb-0">Don't have an account?  <a href="signup" class="text-white-50">Signup</a></p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>