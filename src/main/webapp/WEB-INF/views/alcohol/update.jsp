<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Alcoholiday Drink</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="/resources/assets/css/main.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/detail.css">


    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

        .body{
            font-family: 'Noto Sans KR', sans-serif;
        }

        a {
            text-decoration-line: none;
        }

        /*배너 위치 조절*/
        dl, ol, ul {
            margin-top: 0;
            position: relative;
            margin-bottom: 1rem;
            left: -1%;
        }

    </style>
</head>
<body class="homepage is-preload body">
<div id="page-wrapper">

    <!-- Header -->
    <section id="header">

        <%--로그아웃--%>
        <div style="position: fixed; left: 95%; top: 10px; z-index: 0">
            <a href="/logout"><svg xmlns="http://www.w3.org/2000/svg" width="40%" height="40%" fill="currentColor" class="bi bi-door-open" viewBox="0 0 16 16">
                <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
            </svg></a>
        </div>

        <%--페이지 상단으로 이동--%>
        <div style="position: fixed; left: 98%; bottom: 15px; z-index: 1">
            <a href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                     class="bi bi-box-arrow-in-up" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                          d="M3.5 10a.5.5 0 0 1-.5-.5v-8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 .5.5v8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 0 0 1h2A1.5 1.5 0 0 0 14 9.5v-8A1.5 1.5 0 0 0 12.5 0h-9A1.5 1.5 0 0 0 2 1.5v8A1.5 1.5 0 0 0 3.5 11h2a.5.5 0 0 0 0-1h-2z"/>
                    <path fill-rule="evenodd"
                          d="M7.646 4.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V14.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3z"/>
                </svg>
            </a>
        </div>

        <!-- Logo -->
        <div id="logo">
            <h1><a href="/main">Alcoholiday</a></h1>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a href="/main">Main</a></li>
                <li class="current"><a href="../drink">Drink</a></li>
                <li><a href="../../recipes/list">Recipes</a></li>
                <li><a href="../../notice/list">Notice</a></li>
            </ul>
        </nav>

    </section>

    <!-- Detail -->
    <form method="post" enctype="multipart/form-data" id="updateForm">
        <div class="container" style="background-color: #E2E2E2; margin-top: 5%; margin-bottom: 5%">
            <div class="row row2">
                <div class="col-md-5">
                    <div class="project-info-box mt-0" style="text-align: left">
                        <p><b>Title : </b><input type="text" name="stuffName" value="${item.stuffName}"></p>
                        <p><b>Writer : </b>${item.stuffUserId}</p>
                        <p><b>Categories :</b> Drink</p>
                        <p><b>Date :</b> <fmt:formatDate value="${item.stuffRegDate}" type="date"
                                                         pattern="yyyy/MM/dd HH:mm"></fmt:formatDate></p>
                    </div>
                    <div class="project-info-box mt-0" style="word-break: break-all;">
                        <p><b>Contents</b></p>
                        <textarea type="text" class="form-control mb-2" id="floatingTextarea2 stuffContent"
                                  style="height: 150px"
                                  name="stuffContent" maxlength="800">${item.stuffContent}</textarea>
                        <label for="floatingTextarea2 stuffContent"></label>
                    </div>
                </div>

                <div class="col-md-7">
                    <div id="carouselExampleSlidesOnly" class="carousel slide"
                         data-bs-ride="carousel">
                        <div class="project-info-box mt-0" style="text-align: center">
                            <div class="carousel-inner row-cols-5" id="imgDiv">
                                <c:forEach var="attaches" items="${item.attaches}" varStatus="status">
                                    <div style="display: inline-block; text-align: center; margin: auto" class="mb-3">

                                        <ul class="list-group fileDiv">
                                            <li class="list-group-item active" aria-current="true">${status.index + 1}</li>

                                            <li class="list-group-item">
                                                <input type="file" id="files${status.index}" name="attach" style="visibility: hidden" onchange="updateImgName('files${status.index}')">
                                            <label for="files${status.index}" class="imgLabel${status.index}"> ${attaches.attachFilename}
                                                <button class=" btn btn-primary mt-2" style="width: 100%" onclick="updateImg('files${status.index}')" id="updateButton" type="button">Update</button>
                                                <button class="btn btn-danger mt-1" style="width: 100%" onclick="deleteImg('imgVal${status.index}', 'listVal${status.index}', ${status.index}, '.imgLabel${status.index}')" type="button">Delete</button>
                                            </label>
                                            </li>

                                                <%--attach / stuff pk 값 전달--%>
                                            <input type="hidden" id="imgVal${status.index}" name="attachKey"
                                                   value="${attaches.attachNum}">
                                            <input type="hidden" id="listVal${status.index}" value="${item.stuffNum}">
                                        </ul>
                                    </div>


                                </c:forEach>

                                <%--이미지 선택 추가하는 부분만 나눠놓음--%>


                            </div>
                            <section>
                                <header class="major mt-5">
                                    <h2>new Picture</h2>
                                </header>
                            </section>

                            <div id="deleteDiv">
                                <div class="input-group" id="attachMain">
                                    <input type="file" class="form-control" id="inputGroupFile04"
                                           aria-describedby="inputGroupFileAddon04" aria-label="Upload"
                                           name="attach">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="project-info-box" style="text-align: center">
                        <p><b>알코올 중독 자가진단 : </b> <a href="http://bgnmh.go.kr/checkmehealme/selftest/alcTest3.xx"
                                                    target="_blank">진단하기</a></p>
                    </div>
                    <%--<div style="float: right;">
                        <button type="button" class="btn btn-success" id="attachAdd">Add picture</button>
                        <button class="btn btn-primary" id="updateSubmitButton">Update</button>
                        <a href="../drink">
                            <button class="btn btn-danger" type="button">Cancel</button>
                        </a>
                    </div>--%>
                </div>
            </div>
            <div style="float: right;" class="mt-3">
                <button type="button" class="btn btn-success" id="attachAdd">Add picture</button>
                <button class="btn btn-primary" id="updateSubmitButton">Update</button>
                <a href="../drink">
                    <button class="btn btn-danger" type="button">Cancel</button>
                </a>
            </div>
        </div>
    </form>

    <!-- Footer -->
    <section id="footer" class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-4 col-6-medium col-12-small">
                    <section>
                        <header>
                            <h2>Cocktail Youtuber</h2>
                        </header>
                        <ul class="divided">
                            <li><a href="https://www.youtube.com/c/%EC%88%A0%EB%8D%95%ED%9B%84" target="_blank">Youtuber
                                : 술덕후</a></li>
                            <li><a href="https://www.youtube.com/channel/UCA7ZsD-PoJ2mxAHYPmUdDYA" target="_blank">Youtuber
                                : KOREA BARTENDER</a></li>
                            <li>
                                <a href="https://www.youtube.com/c/RiniBini%EB%A6%AC%EB%8B%88%EB%B9%84%EB%8B%88sister"
                                   target="_blank">Youtuber : RiniBini</a></li>
                            <li><a href="https://www.youtube.com/c/Yancon_YC" target="_blank">Youtuber : Yancon</a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/c/%ED%99%88%ED%85%90%EB%94%A9%EB%B0%B1%EA%B3%BC%EB%9D%A0%EB%8F%99%EA%B0%91%EB%B0%94%ED%85%90%EB%8D%94"
                                   target="_blank">Youtuber : 홈텐딩백과</a></li>
                            <li><a href="https://www.youtube.com/c/GeorgeBodistean" target="_blank">Youtuber :
                                BODISTEAN</a></li>
                        </ul>
                    </section>
                </div>
                <div class="col-4 col-6-medium col-12-small">
                    <section>
                        <header>
                            <h2>Another Sites</h2>
                        </header>
                        <ul class="divided">
                            <li><a href="https://www.beveragemaster.kr/" target="_blank">한국 베버리지 마스터 협회</a></li>
                            <li><a href="https://iba-world.com/" target="_blank">국제 바텐더 협회</a></li>
                            <li><a href="https://cocktail.com/" target="_blank">Cocktail</a></li>
                            <li><a href="https://en.1001cocktails.com/" target="_blank">1001 Cocktail</a></li>
                            <li><a href="http://www.drinksmixer.com/" target="_blank">Drinks mixer</a></li>
                            <li><a href="https://www.diffordsguide.com/" target="_blank">Diffords guide</a></li>
                        </ul>
                    </section>
                </div>
                <div class="col-4 col-12-medium">
                    <section>
                        <header>

                        </header>
                        <ul class="social">
                        </ul>
                        <ul class="contact">
                            <li>
                                <h3>Address</h3>
                                <p>
                                    352-21, Uam-ro, Dong-gu,<br/>
                                    Daejeon<br/>
                                    Republic of Korea
                                </p>
                            </li>
                            <li>
                                <h3>Mail</h3>
                                <p><a href="#">alcoholiday@gmail.com</a></p>
                            </li>
                            <li>
                                <h3>Phone</h3>
                                <p>042) 670-0600</p>
                            </li>
                        </ul>
                    </section>
                </div>
                <div class="col-12">

                    <!-- Copyright -->
                    <div id="copyright">
                        <ul class="links">
                            <li><a href="#logo">&copy; Alcohol.com</a></li>
                            <li>developer : <a href="https://google.com" target="_blank">Google</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>

<script src="/resources/js/updateJsp.js"></script>

<!-- Scripts -->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>

<script>
    // 이미지 파일 버튼 클릭시 ajax 통신 attach_num
    function deleteImg(obj1, obj2, obj3, obj4) {

        /*obj1 : attach pk
        obj2 : stuff pk*/

        var param = {
            attachNum: $("#" + obj1).val(),
            stuffNum: $("#" + obj2).val(),
            statusIndex: obj3,
            imgLabel: obj4,
        }
        /*alert(obj3);*/
        /*alert($("#"+ obj1).val());
        alert($("#"+ obj2).val());*/


        // ajax 통신
        $.ajax({
            type: "POST",            // HTTP method type(GET, POST) 형식이다.
            url: "/alcohol/imgDelete",      // 컨트롤러에서 대기중인 URL 주소이다.
            data: param,// Json 형식의 데이터이다.
            dataType: "JSON",
            success: function (res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                // 응답코드 > 0000
                location.reload();
                /*alert(res);*/
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("이미지 삭제 실패")
            }
        });
    }

</script>
</body>
</html>