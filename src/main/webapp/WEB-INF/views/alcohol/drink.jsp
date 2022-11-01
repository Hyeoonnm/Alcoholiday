<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Alcoholiday</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="/resources/assets/css/main.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/slideShow.css">

    <style>
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
<body class="no-sidebar is-preload">
<div id="page-wrapper">

    <!-- Header -->
    <section id="header">

        <%--로그아웃--%>
        <div style="position: absolute; left: 95%; top: 10px;">
            <a href="/logout"><img src="/resources/images/logout.jpg" width="60" height="60"></a>
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
                <li><a href="/main">MAIN</a></li>
                <li class="current"><a href="/drink">DRINK</a></li>
                <li><a href="/recipes">RECIPES</a></li>
                <li><a href="/tools">TOOLS</a></li>
                <li>
                    <a href="#">SHARE</a>
                    <ul>
                        <li><a href="#">PLACE</a></li>
                        <li><a href="alcohol/list">COCKTAIL</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <!-- Banner -->
        <section id="banner">
            <header>
                <h2>Things to drink</h2>
                <p>DON'T DRINK TOO MUCH</p>
            </header>
        </section>

        <%--글쓰기--%>
        <div style="position: absolute; left: 48%; bottom: 10px; width: auto">
            <!-- Add Button trigger modal -->
            <button type="button" class="btn btn-lg btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">
                <h7 style="color: black">Write</h7>
            </button>
        </div>

    </section>


    <!-- Main -->
    <section id="main">
        <div class="container">
            <div class="row row-cols-3">
                <c:forEach items="${drink}" var="drink">
                    <c:choose>

                        <%--attach에 파일이 존재하지 않을 경우--%>
                        <c:when test="${empty drink.attaches}">
                            <div>
                                <div class="card" style="width: 25rem;">
                                    <img src="/resources/images/nopic.png" class="card-img-top"
                                         style="width: 25rem; height: 20rem;"
                                         alt="...">
                                    <div class="card-body">
                                        <hr>
                                        <h5 class="card-title">${drink.stuffName}</h5>
                                        <p>Writer : ${drink.stuffUserId}</p>
                                        <p><fmt:formatDate value="${drink.stuffRegDate}" pattern="yyyy/MM/dd HH:mm"
                                                           type="both"/></p>
                                        <a href="/alcohol/detail/${drink.stuffNum}" class="btn btn-primary">Read
                                            more.</a>

                                        <c:if test="${sessionScope.user.userId == drink.stuffUserId}">
                                            <a href="/alcohol/update/${drink.stuffNum}">
                                                <button class="btn btn-success">Update</button>
                                            </a>
                                            <a href="/alcohol/delete/${drink.stuffNum}">
                                                <button class="btn btn-danger">Delete</button>
                                            </a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </c:when>

                        <%--attach에 사진 파일이 존재 할 경우--%>
                        <c:otherwise>
                            <div id="index_03">
                                <div class="card" style="width: 25rem;" id="header3">
                                    <div class="album" id="slide3">
                                        <c:forEach items="${drink.attaches}" var="attaches">
                                                <img src="/img/${attaches.attachFilename}" class="card-img-top slide1"
                                                     style="width: 100%; height: 100%;"
                                                     alt="...">
                                        </c:forEach>
                                    </div>
                                    <div class="card-body">
                                        <hr>
                                        <h5 class="card-title">${drink.stuffName}</h5>
                                        <p>Writer : ${drink.stuffUserId}</p>
                                        <p><fmt:formatDate value="${drink.stuffRegDate}" pattern="yyyy/MM/dd HH:mm"
                                                           type="both"/></p>
                                        <a href="/alcohol/detail/${drink.stuffNum}" class="btn btn-primary">Read
                                            more.</a>

                                        <c:if test="${sessionScope.user.userId == drink.stuffUserId}">
                                            <a href="/alcohol/update/${drink.stuffNum}">
                                                <button class="btn btn-success">Update</button>
                                            </a>
                                            <a href="/alcohol/delete/${drink.stuffNum}">
                                                <button class="btn btn-danger">Delete</button>
                                            </a>
                                        </c:if>
                                    </div>
                                </div>

                            </div>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

            </div>
        </div>
    </section>

    <!-- Footer -->
    <section id="footer" class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-4 col-6-medium col-12-small">
                    <section>
                        <header>
                            <h2 class="text-white">Cocktail Youtuber</h2>
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
                            <h2 class="text-white">Another Sites</h2>
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
                                <h3 class="text-white">Address</h3>
                                <p>
                                    352-21, Uam-ro, Dong-gu,<br/>
                                    Daejeon<br/>
                                    Republic of Korea
                                </p>
                            </li>
                            <li>
                                <h3 class="text-white">Mail</h3>
                                <p><a href="#">alcoholiday@gmail.com</a></p>
                            </li>
                            <li>
                                <h3 class="text-white">Phone</h3>
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

<!-- Add Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
     aria-labelledby="addModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="addModalLabel">Add new drink</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form method="post" action="../alcohol/add" enctype="multipart/form-data">
                    <div>
                        <input class="mb-2 form-control" type="text" name="stuffName" placeholder="Drink Name">
                    </div>

                    <div>
                        <input class="mb-2 form-control" type="number" name="stuffPrice" value="0"
                               placeholder="Total price">
                    </div>

                    <div class="form-floating">
                        <textarea class="form-control mb-2" id="floatingTextarea2" style="height: 150px"
                                  name="stuffContent"></textarea>
                        <label for="floatingTextarea2">Contents</label>
                    </div>

                    <input type="hidden" name="stuffUserId" value="${sessionScope.user.userId}">

                    <div class="input-group mb-3" id="attachMain">
                        <input type="file" name="attach" class="form-control" id="inputGroupFile02">
                    </div>

                    <%--Add button--%>
                    <div class="modal-footer">
                        <button class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-secondary"
                                data-bs-dismiss="modal">Close
                        </button>
                        <div style="float: left;">
                            <button type="button" class="btn btn-primary" style="float: left;" id="attachAdd">Add
                                pictures
                            </button>
                            <button type="button" class="btn btn-danger" id="attachDelete">Delete picture</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<script>

    $("#attachAdd").click(function () {
        const div = $("<div>");
        div.addClass("input-group mb-3");

        const input = $("<input>");
        input.addClass("form-control");
        input.attr("type", "file");
        input.attr("name", "attach");
        input.attr("id", "inputGroupFile02");

        const button = $("<button>");
        button.text("Delete");
        button.attr("type", "button");
        button.addClass("btn-sm");
        button.addClass("btn-outline-danger");
        button.addClass("delete");

        div.append(input);
        div.append(button);

        $("#attachMain").append(div);
    });
</script>
<!-- Scripts -->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>

<script src="/resources/js/autoSlide.js"></script>
</body>
</html>