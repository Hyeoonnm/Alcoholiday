<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 2022-11-23
  Time: 오후 1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <head>
        <title>Alcoholiday</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>

        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <link rel="stylesheet" href="/resources/assets/css/main.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
              crossorigin="anonymous">
        <link rel="stylesheet" href="/resources/css/drinklist.css">

        <style>
            @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

            .body {
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
<body class="no-sidebar is-preload body">
<div id="page-wrapper">
    <!-- Header -->
    <section id="header">

        <%--로그아웃--%>
        <div style="position: absolute; left: 95%; top: 10px;">
            <a href="/logout"><img src="/resources/images/logout.jpg" style="width: 50%; height: 50%;"></a>
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
            <h1><a href="#logo">Alcoholiday</a></h1>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a href="/main">Main</a></li>
                <li><a href="../../alcohol/drink">Drink</a></li>
                <li class="current"><a href="../../recipes/list">Recipes</a></li>
                <li><a href="/notice">Notice</a></li>
            </ul>
        </nav>
    </section>
</div>

<%-- Detail --%>

<div class="card mt-3 mb-3" style="width: 70%; margin: auto; text-align: center">
    <div class="card-body">
        <h5 class="card-title">Recipes Title : ${recipes.stuffName}</h5>
        <h6 class="card-subtitle mb-2 text-muted">Writer : ${recipes.stuffUserId}</h6>
        <hr>
        <p class="card-text">${recipes.stuffContent}</p>
        <a href="../list" style="float: right" class="card-link">Back</a>
    </div>
</div>

<%--댓글--%>
<hr>
<h1 style="text-align: center">Comments</h1>
<form method="post" action="/reply/recipesAdd">
    <div class="input-group mb-3 mt-3" style="width: 60%; margin: auto">
            <textarea style="height: 100px" type="text" class="form-control" name="replyContent"
                      placeholder="Leave a Comment" aria-describedby="button-addon2"></textarea>
        <button class="btn btn-primary" id="button-addon2">Enter</button>
        <input type="hidden" name="replyStuffNum" value="${recipes.stuffNum}">
    </div>
</form>

<div class="container">
    <c:forEach items="${recipes.replyList}" var="reply" varStatus="status">
        <div class="card mb-3" style="width: 100%;">
            <div class="card-body">
                <h5 class="card-title">${reply.replyContent}</h5>
                <p>Writer : ${reply.replyUserId}</p>
                <p><fmt:formatDate value="${reply.replyRegDate}" type="date"
                                   pattern="YYYY/MM/dd hh:mm:ss"></fmt:formatDate></p>
                <c:if test="${sessionScope.user.userId == reply.replyUserId}">

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal"
                            data-bs-target="#exampleModal${status.index}">
                        Update
                    </button>

                    <a href="/reply/recipesDelete/${recipes.stuffNum}/${reply.replyNum}">
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </a>
                </c:if>
            </div>
        </div>

        <!-- 댓글 update Modal -->
        <form method="post" action="/reply/recipesUpdate/${recipes.stuffNum}/${reply.replyNum}">
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
                            <input type="hidden" name="replyStuffNum" value="${recipes.stuffNum}">

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
                        <li><a href="https://www.youtube.com/c/RiniBini%EB%A6%AC%EB%8B%88%EB%B9%84%EB%8B%88sister"
                               target="_blank">Youtuber : RiniBini</a></li>
                        <li><a href="https://www.youtube.com/c/Yancon_YC" target="_blank">Youtuber : Yancon</a></li>
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

<!-- Scripts -->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>
</body>
</html>