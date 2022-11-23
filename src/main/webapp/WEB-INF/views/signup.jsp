<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alcoholiday User Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
        a {
            text-decoration: none;
        }
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

        .body{
            font-family: 'Noto Sans KR', sans-serif;
        }



    </style>
</head>
<body class="body">
<section class="vh-100">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration bg-dark text-white" style="border-radius: 15px;">
                    <div class="card-body p-4 p-m d-5 text-white" style="border-radius: 1rem;">

                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Alcoholiday Signup</h3>

                        <form method="post" name="signup_form">

                            <div class="row">
                                <div class="col-md-6 mb-4">

                                    <div class="form-outline">
                                        <input type="text" id="userName" name="userName"
                                               class="form-control form-control-lg " placeholder="Name" minlength="2"
                                               maxlength="10"/>
                                        <label class="form-label" for="userName"/>
                                    </div>

                                </div>
                                <div class="col-md-6 mb-4">

                                    <div class="form-outline input-group">
                                        <input type="text" id="userId" name="userId"
                                               class="form-control form-control-lg" placeholder="ID" minlength="4"
                                               maxlength="14">
                                        <label class="form-label" for="userId"/>
                                        <div class="input-group-append form-outline">
                                            <button type="button" class="btn btn-primary" id="checkId"
                                                    style="margin-left: 4%; width: 100%; height: 120%">
                                                Check
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-4 align-items-center">

                                    <div class="form-outline">
                                        <input type="tel" id="userPhone" name="userPhone"
                                               class="form-control form-control-lg" placeholder="Phone" maxlength="13"
                                               oninput="hypenTel(this)"/>
                                        <label class="form-label" for="userPhone"/>
                                    </div>

                                </div>
                                <div class="col-md-6 mb-4">

                                    <div class="form-outline">
                                        <input type="password" id="userPwd" name="userPwd"
                                               class="form-control form-control-lg" placeholder="Password" minlength="4"
                                               maxlength="12"/>
                                        <label class="form-label" for="userPwd"/>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-4 pb-2">

                                    <div class="form-outline">
                                        <input type="email" id="userEmail" name="userEmail"
                                               class="form-control form-control-lg" placeholder="E-mail"/>
                                        <label class="form-label" for="userEmail"/>
                                    </div>

                                </div>
                                <div class="col-md-6 mb-4 pb-2">

                                    <div class="form-outline">
                                        <input type="password" id="userPwdValid" name="userPwdValid"
                                               class="form-control form-control-lg" placeholder="Confirm Password"
                                               minlength="4" maxlength="12"/>
                                        <label class="form-label" for="userPwdValid"/>
                                    </div>

                                </div>
                            </div>

                            <button disabled type="button" style="width: 100%; height: 100%"
                                    class="mb-3 btn bnt-sm btn-dark bg-gradient btn-outline-light signupButton"
                                    onclick="signup()" id="signup_btn">Signup
                            </button>
                            <a href="/main" style="color : white">
                                <button type="button" class="btn btn-sm btn-dark bg-gradient btn-outline-light"
                                        style="width: 100%; height: 100%">Back
                                </button>
                            </a>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    // 전화번호 입력시 자동 -
    const hypenTel = (target) => {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
    }
    let inputId = null;
    /*아이디 중복 펑션 (성민ver)*/
    $('#checkId').click(function () {
        $.ajax({
            type: 'POST',
            url: '/checkId',
            data: {
                "userId": $("#userId").val()
            },
            success: function (result) {
                if (result == 'OK') {
                    alert("사용 가능한 아이디입니다.");
                    /*console.log(result);*/
                    inputId = $('#userId').val();
                    /*console.log(inputId);*/
                    $('.signupButton').removeAttr('disabled');
                } else {
                    /*console.log(result);*/
                    alert("이미 사용 중인 아이디입니다.");
                    $('.signupButton').attr('disabled');
                }
            }
        });
    });

    // 회원가입 버튼 클릭시 작동 function
    function signup() {

        let idVal = $('#userId').val();


        const form = document.signup_form;
        const idCheck = document.querySelector('#userId').value;
        const pwdCheck = document.querySelector('#userPwd').value;
        const pwdValidCheck = document.querySelector('#userPwdValid').value;
        const nameCheck = document.querySelector('#userName').value;
        const phoneCheck = document.querySelector('#userPhone').value;
        const emailCheck = document.querySelector('#userEmail').value;


        // 아이디 중복확인 alert 출력
        if (idVal == null || idVal != $('#userId').val()) {
            alert("Check your ID.");
            idCheck.focus();
            return;
        }
        // 아이디 입력란 공백시 alert 출력
        if (idCheck == "") {
            alert("Enter your ID.");
            idCheck.focus();
            return;
        }

        // 비밀번호 입력란 공백시 alert 출력
        if (pwdCheck == "") {
            alert("Enter your Password.");
            pwdCheck.focus();
            return;
        }

        // 비밀번호 확인 입력란 공백시 alert 출력
        if (pwdValidCheck == "") {
            alert("Enter your confirm Password.");
            pwdValidCheck.focus();
            return;
        }

        // 비밀번호와 재입력이 일치하지 않을 경우 alert 출력
        if (pwdCheck != pwdValidCheck) {
            alert("The password you entered is incorrect.");
            pwdCheck.focus();
            return;
        }

        // 이름 입력란 공백시 alert 출력
        if (nameCheck == "") {
            alert("Enter your Name.")
            nameCheck.focus();
            return;
        }

        // 전화번호 입력란 공백시 alert 출력
        if (phoneCheck == "") {
            alert("Enter your Phone-Number.")
            phoneCheck.focus();
            return;
        }

        // 이메일 입력란 공백시 alert 출력
        if (emailCheck == "") {
            alert("Enter your E-mail.")
            emailCheck.focus();
            return;
        }
        if (inputId != $('#userId').val()) {
            alert("Check your ID.");
            $('.signupButton').attr('disabled');
            return;
        }
        form.submit();
    }
</script>
</body>
</html>