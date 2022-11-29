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

        .imgButton:hover {
            background-color: rgba(255, 255, 255, 0) !important;
        }

        #detailImg {
            text-align: center;
            position: relative;
            padding: 8em 0;
            margin: 4em 0 0 0;
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
        <div style="position: fixed; left: 95%; top: 10px; z-index: 0;">
            <a href="/logout">
                logout
                <svg xmlns="http://www.w3.org/2000/svg" width="40%" height="40%" fill="currentColor"
                     class="bi bi-door-open" viewBox="0 0 16 16">
                    <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                    <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
                </svg>
            </a>
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
                <li><div style="border-radius: 5px; background-color: rebeccapurple"><h3 style="color: white">${sessionScope.user.userId}</h3></div></li>
                <li><a href="../../recipes/list">Recipes</a></li>
                <li><a href="../../notice/list">Notice</a></li>
            </ul>
        </nav>
    </section>

    <form method="post">
    <!-- Detail -->
    <div class="container" style="background-color: #E2E2E2; margin-top: 5%; margin-bottom: 5%">
        <div class="row row2">
            <div class="col-md-5">
                <div class="project-info-box mt-0" style="text-align: left">
                    <p><b>Title :</b> ${drink.stuffName}</p>
                    <p><b>Writer :</b> ${drink.stuffUserId}</p>
                    <p><b>Categories :</b> Drink</p>
                    <p><b>Date :</b> <fmt:formatDate value="${drink.stuffRegDate}" type="date"
                                                     pattern="YYYY/MM/dd HH:mm:ss"></fmt:formatDate></p>
                </div>
                <div class="project-info-box mt-0" style="word-break: break-all; height: 69%">
                    <p><b>Contents</b></p>
                    <div style="white-space: pre-wrap"><p>${drink.stuffContent}</p></div>
                </div>
            </div>

            <div class="col-md-7">
                <div id="carouselExampleControls" class="carousel slide"
                     data-bs-ride="carousel">
                    <div class="project-info-box mt-0">
                        <div class="carousel-inner" id="imgDiv">
                            <c:choose>
                                <c:when test="${empty drink.attaches}">
                                    <div class="carousel-item">
                                        <img src="/resources/images/nopic.png" class="d-block"
                                             style="width: 100%; height: 40rem; border-radius: 5px;" alt="...">
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${drink.attaches}" var="attaches">
                                        <div class="carousel-item">
                                            <img src="/img/${attaches.attachFilename}" class="d-block"
                                                 style="width: 100%; height: 40rem; border-radius: 5px;" alt="...">
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <button class="carousel-control-prev imgButton" type="button"
                            data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next imgButton" type="button"
                            data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="project-info-box" style="text-align: center">
                    <p><b>알코올 중독 자가진단 : </b> <a href="http://bgnmh.go.kr/checkmehealme/selftest/alcTest3.xx"
                                                target="_blank">진단하기</a></p>
                    <a href="../drink"><button class="btn btn-danger" type="button">Back</button></a>
                </div>
            </div>
        </div>
    </div>
    </form>

    <hr>


    <%--댓글--%>
    <h1 style="text-align: center">Comments</h1>
    <form method="post" action="/reply/add">
        <div class="input-group mb-3 mt-3" style="width: 60%; margin: auto">
            <textarea style="height: 100px" type="text" class="form-control" name="replyContent"
                      placeholder="Leave a Comment" aria-describedby="button-addon2"></textarea>
            <button class="btn btn-primary" id="button-addon2">Enter</button>
            <input type="hidden" name="replyStuffNum" value="${drink.stuffNum}">
        </div>
    </form>

    <div class="container">
        <c:forEach items="${drink.replyList}" var="reply" varStatus="status">
            <div class="card mb-3" style="width: 100%;">
                <div class="card-body">
                    <div style="white-space: pre-wrap"><h5 class="card-title">${reply.replyContent}</h5></div>
                    <p>Writer : ${reply.replyUserId}</p>
                    <p><fmt:formatDate value="${reply.replyRegDate}" type="date"
                                       pattern="YYYY/MM/dd HH:mm:ss"></fmt:formatDate></p>
                    <c:if test="${sessionScope.user.userId == reply.replyUserId || sessionScope.user.userId == 'admin'}">
                        <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal${status.index}">
                                Update
                            </button>
                        <a href="/reply/delete/${drink.stuffNum}/${reply.replyNum}">
                            <button class="btn btn-danger btn-sm">Delete</button>
                        </a>
                    </c:if>
                </div>
            </div>

            <!-- 댓글 updqte Modal -->
            <form method="post" action="/reply/update/${drink.stuffNum}/${reply.replyNum}">
                <div class="modal fade" id="exampleModal${status.index}" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Comment Update</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <textarea style="height: 100px" type="text" class="form-control" name="replyContent"
                                          aria-describedby="button-addon2">${reply.replyContent}</textarea>
                                <input type="hidden" name="replyStuffNum" value="${drink.stuffNum}">
                                <input type="hidden" name="replyUserId" value="${reply.replyUserId}">

                                <div class="modal-footer">
                                    <button class="btn btn-primary">Update</button>
                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </c:forEach>
    </div>


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
<script>
    $(document).ready(function () {
        $('#imgDiv :first-child').addClass('active');
    });
</script>

<!-- Scripts -->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>

</body>
</html>