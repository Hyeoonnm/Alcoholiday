<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Alcoholiday Recipes</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="/resources/assets/css/main.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/drinklist.css">

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
<body class="no-sidebar is-preload body">
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
                <li><a href="../alcohol/drink">Drink</a></li>
                <li><h2>${sessionScope.user.userId}</h2></li>
                <li class="current"><a href="#">Recipes</a></li>
                <li><a href="../notice/list">Notice</a></li>
            </ul>
        </nav>
    </section>

    <form method="post">
        <div style="text-align: center" class="mt-3">
            <div class="input-group w-50" style="margin:auto">
                <div style="margin-right: 1%">
                    <select class="form-select" aria-label="Default select example" name="searchType">
                        <option selected value="0">Select Menu</option>
                        <option value="3" <c:if test="${search.searchType eq '3'}">selected</c:if>>Title</option>
                        <option value="4" <c:if test="${search.searchType eq '4'}">selected</c:if>>Writer</option>
                        <option value="5" <c:if test="${search.searchType eq '5'}">selected</c:if>>Content</option>
                    </select>
                </div>
                <input type="text" name="keywords" class="form-control" placeholder="${search.keywords}"
                       aria-label="Recipient's username with two button addons" style="height: 2.5rem;" value="${search.keywords}">
                <button class="btn btn-secondary btn-sm">Search</button>

                <div style="margin-left: 1%">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">new Writing
                    </button>
                </div>
            </div>
        </div>
    </form>

    <!-- list -->
    <div class="container mt-3">
        <table class="table">
            <thead>
            <tr>
                <c:if test="${empty recipes}">
                    <th scope="col">#</th>
                </c:if>

                <c:if test="${not empty recipes}">
                <th scope="col">#</th>
                <th scope="col">Recipes Name</th>
                <th scope="col">Writer</th>
                <th scope="col">RegDate</th>
                <th scope="col">Control</th>
                <th scope="col">Comments</th>
                </c:if>
            </tr>
            </thead>

            <c:if test="${empty recipes}">
                <tr>
                    <th scope="row">
                        " ${search.keywords} " 에 대해 검색된 결과가 없습니다.
                    </th>
                </tr>
            </c:if>

            <tbody>
            <c:forEach var="recipes" items="${recipes}" varStatus="status">
                <tr>
                    <th scope="row">${recipes.rowNum}</th>
                    <%--<td>${recipes.stuffName}</td>--%>
                        <td><a href="/recipes/detail/${recipes.stuffNum}">${recipes.stuffName}</a></td>
                    <td>${recipes.stuffUserId}</td>
                    <td><fmt:formatDate value="${recipes.stuffRegDate}" pattern="yyyy/MM/dd HH:mm"
                                        type="both"/></td>
                    <c:if test="${sessionScope.user.userId == recipes.stuffUserId || sessionScope.user.userId == 'admin'}">
                        <td>
                            <a href="../recipes/update/${recipes.stuffNum}"
                               class="btn btn-sm btn-primary ms-1">Update</a>
                            <a href="../recipes/delete/${recipes.stuffNum}" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </c:if>
                    <c:if test="${sessionScope.user.userId != recipes.stuffUserId}">
                        <td>
                            -
                        </td>
                    </c:if>
                        <td>
                        <i class="bi bi-chat-dots" style="text-align: center"><small>&nbsp;&nbsp;<c:out
                                value="${recipes.replyCnt}"/></small></i>
                        </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="pagination-wrap mt-5 d-flex justify-content-center" data-aos="fade-in" data-aos-delay="100">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="?page=1&langname=angular">First</a></li>
                    <li class="page-item">
                        <a class="page-link" href="?page=${pager.prev}&langname=angular" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach var="page" items="${pager.list}">
                        <li class="page-item">
                            <a class="page-link ${page eq pager.page ? 'active' : ''}"
                               href="?page=${page}&langname=angular">${page}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link" href="?page=${pager.next}&langname=angular" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?page=${pager.last}&langname=angular">Last</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- ADD Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">new Recipes</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <form method="post" action="../recipes/add">
                        <div>
                            <input class="mb-2 form-control" type="text" name="stuffName" placeholder="Recipes Name"
                                   minlength="2">
                        </div>

                        <div>
                            <textarea type="text" name="stuffContent" placeholder="Recipes Contents"
                                      minlength="1"></textarea>
                        </div>

                        <input type="hidden" name="stuffUserId" value="${sessionScope.user.userId}">
                        <div class="modal-footer">
                            <button class="btn btn-primary">Write</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
</div>
<!-- Scripts -->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>
</body>
</html>