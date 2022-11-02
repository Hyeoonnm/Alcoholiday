<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Alcoholiday</title>
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
<body class="homepage is-preload">
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
                <li class="current"><a href="/main">MAIN</a></li>
                <li><a href="alcohol/drink">DRINK</a></li>
                <li><a href="recipes">RECIPES</a></li>
                <li><a href="tools">TOOLS</a></li>
                <li><a href="place/list">PLACE</a></li>
            </ul>
        </nav>

        <!-- Banner -->
        <section id="banner">
            <header>
                <h2>Welcome to Alcoholiday</h2>
                <p>DON'T DRINK TOO MUCH</p>
            </header>
        </section>

        <!-- Intro -->
        <section id="intro" class="container">
            <div class="row">
                <div class="col-4 col-12-medium">

                    <section class="first">
                        <a href="alcohol/drink">
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor"
                                 class="bi bi-cup-straw" style="margin-bottom: 3em;" viewBox="0 0 16 16">
                                <path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82 0 .046-.004.09-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87-1.516 0-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A.78.78 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278zM9.768 4.607A13.991 13.991 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.284 3.284 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085l.18-.808zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a5.514 5.514 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69 1.27 0 2.081-.441 2.438-.69.042-.029.09-.094.102-.215l.852-8.03a5.517 5.517 0 0 1-.435.127 8.88 8.88 0 0 1-.89.17zM4.467 4.884s.003.002.005.006l-.005-.006zm7.066 0-.005.006c.002-.004.005-.006.005-.006zM11.354 5a3.174 3.174 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222z"/>
                            </svg>
                        </a>
                        <header>
                            <h2>DRINK</h2>
                        </header>
                        <p>Some kind of beer, cocktail, shot</p>
                    </section>

                </div>
                <div class="col-4 col-12-medium">

                    <section class="middle">
                        <a href="recipes">
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor"
                                 class="bi bi-journal-text" style="margin-bottom: 3em;" viewBox="0 0 16 16">
                                <path d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                                <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
                                <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
                            </svg>
                        </a>
                        <header>
                            <h2>RECIPES</h2>
                        </header>
                        <p>Cocktail recipes</p>
                    </section>

                </div>
                <div class="col-4 col-12-medium">

                    <section class="last">
                        <a href="tools">
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor"
                                 class="bi bi-box-seam" style="margin-bottom: 3em;" viewBox="0 0 16 16">
                                <path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
                            </svg>
                        </a>
                        <header>
                            <h2>TOOL</h2>
                        </header>
                        <p>Tools needed to make cocktails</p>
                    </section>

                </div>
            </div>
            <footer>
                <ul class="actions">
                    <li><a href="#" class="button large">Get Started</a></li>
                    <li><a href="#drinkimg" class="button alt large">Learn More</a></li>
                </ul>
            </footer>
        </section>
    </section>

    <!-- Main -->
    <section id="drinkimg">
        <div class="container">
            <div class="row">
                <%--<div class="col-12">

                    &lt;%&ndash;DRINK&ndash;%&gt;
                    <section>
                        <header class="major">
                            <h2>Drink</h2>
                        </header>

                        &lt;%&ndash;롱티&ndash;%&gt;
                        <div class="row">
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/1.png"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Long Island Iced Tea</h3>
                                    </header>
                                    <p>아이스티와 비슷하며 콜라의 단맛이 술을 중화 시켜주어 마시기 쉽기 때문에 인기있는 칵테일 중 하나이다.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>

                            &lt;%&ndash;피치크러쉬&ndash;%&gt;
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/2.jpg"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Peach Crush</h3>
                                    </header>
                                    <p>복숭아 향이 나며 맛은 약간 새콤한 느낌이다. 도수가 매우 낮고 덕분에 여성들에게 인기가 많은 칵테일이다.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>

                            &lt;%&ndash;미도리샤워&ndash;%&gt;
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/3.jpg"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Midori Sour</h3>
                                    </header>
                                    <p>멜론맛인 미도리와 스윗 & 사워 믹스의 레몬향이 어우러져서 새콤 달콤한 맛과 초록색 빛이 포인트이다.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>

                            &lt;%&ndash;아디오스&ndash;%&gt;
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/4.jpg"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Adios(AMF)</h3>
                                    </header>
                                    <p>Long Island Iced tea와 들어가는 술은 한가지가 다르지만 도수가 좀 더 낮고 콜라대신 사이다가 들어간다 색상이 예쁘며
                                        상큼하다</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>

                            &lt;%&ndash;섹스온더비치&ndash;%&gt;
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/5.jpg"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Sex On The Beach</h3>
                                    </header>
                                    <p>이름 때문에 유명한 칵테일이다. 남자가 사준 이 칵테일을 여자가 마시면 두 사람은 키스를 나누어야한다는 풍습이 있다고한다.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>

                            &lt;%&ndash;옥보단&ndash;%&gt;
                            <div class="col-4 col-6-medium col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/6.jpg"
                                                                            style="width: 357.48px; height:248.52px;"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Okbodan</h3>
                                    </header>
                                    <p>잔 가장자리에 설탕을 묻혀두는데 잔 가장자리에 묻은 설탕을 혀로 핥아먹는 모습 때문에 야한 이름이 붙었다.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button alt">Other cocktail</a></li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>
                        </div>
                    </section>

                </div>--%>
                <div class="col-12">

                    <!-- Best Contents -->
                    <section>
                        <header class="major">
                            <h2>Best Contents</h2>
                        </header>
                        <div class="row">
                            <div class="col-6 col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/pic08.jpg"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Magna tempus consequat</h3>
                                        <p>Posted 45 minutes ago</p>
                                    </header>
                                    <p>Lorem ipsum dolor sit amet sit veroeros sed et blandit consequat sed veroeros
                                        lorem et blandit adipiscing feugiat phasellus tempus hendrerit, tortor vitae
                                        mattis tempor, sapien sem feugiat sapien, id suscipit magna felis nec elit.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos
                                        lorem ipsum dolor sit amet.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a>
                                            </li>
                                            <li><a href="#" class="button alt icon solid fa-comment">33 comments</a>
                                            </li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>
                            <div class="col-6 col-12-small">
                                <section class="box">
                                    <a href="#" class="image featured"><img src="/resources/images/pic09.jpg"
                                                                            alt=""/></a>
                                    <header>
                                        <h3>Aptent veroeros aliquam</h3>
                                        <p>Posted 45 minutes ago</p>
                                    </header>
                                    <p>Lorem ipsum dolor sit amet sit veroeros sed et blandit consequat sed veroeros
                                        lorem et blandit adipiscing feugiat phasellus tempus hendrerit, tortor vitae
                                        mattis tempor, sapien sem feugiat sapien, id suscipit magna felis nec elit.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos
                                        lorem ipsum dolor sit amet.</p>
                                    <footer>
                                        <ul class="actions">
                                            <li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a>
                                            </li>
                                            <li><a href="#" class="button alt icon solid fa-comment">33 comments</a>
                                            </li>
                                        </ul>
                                    </footer>
                                </section>
                            </div>
                        </div>
                    </section>

                </div>
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