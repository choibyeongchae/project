<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
    <title>Helios by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="../resources/assets/css/main.css" />
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style>
        .player_wrap {
            width: 100%;
            overflow: hidden;
        }

        .top {
            width: 100%;
            height: 300px;
        }

        .left_image {
            width: 30%;
            height: 450px;
            margin-right: 30px;
            float: left;
        }

        .left_image img {
            width: 100%;
            height: 100%;
        }

        .right_content {
            width: 60%;
            height: 450px;
            border: 1px solid black;
            float: right;
        }

        .center_left_year {
            width: 20%;
            height: 30px;
            clear: both;
            float: left;
            border-bottom: 1px solid black;
        }

        .player_position {
            width: 50%;
            overflow: hidden;
            margin: 0 auto;
            text-align: left;
        }

        .en_name {
            width: 50%;
            margin: 0 auto;
            text-align: left;
            border-bottom: 1px solid black;
            font-size: 10px;
        }

        .introduce_player {
            width: 70%;
            overflow: hidden;
            margin: 0 auto;
        }

        .introduce_player table {
            text-align: left;
            width: 100%;
        }

        .introduce_player table td:first-child {
            border: none;
        }

        .introduce_player table td:last-child {
            border: none;
        }

        .introduce_player table tr {
            border: none;
        }

        .introduce_player table tr td:nth-child(2) {}

        .introduce_player table th {
            border: none;
        }

        .player_score th {
            font-weight: 900;
            color: black;
            background-color: #98F791;
        }

        .player_score td {
            color: black;
        }

        .player_all_score td {
            color: black;
        }

        .select_year {
            width: 30%;
            height: 30px;
            line-height: 30px;
            float: right;
        }

        .player_all_score th {
            color: black;
            font-weight: 900;
            background-color: #98F791;
        }

        .aaa th {
            border: 1px solid black;
        }

        .aaa td {
            border: 1px solid black;
        }

        .align_text {
            width: 20%;
            height: 30px;
            line-height: 30px;
            float: left;
            clear: both;
        }
        .select_list{
        	display: block;
        	float:left;
        }
    </style>
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<script>

function move_to_Page(url){
    location.href="../Front/"+url;
}
</script>
<body class="homepage">
    <div id="page-wrapper">

        <!-- Header -->
        <div id="header">

            <!-- Inner -->


            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="/">ホーム</a></li>
                    <li>
                        <a href="introduce">九段紹介</a>
                    </li>
                    <li><a href="#">選手団紹介</a>
                        <ul>
                            <li><a href="supervisor">監督/コーチングスタッフ</a>
                                <ul>
                                    <li><a href="supervisor">監督</a></li>
                                    <li><a href="coach">コーチ</a></li>
                                </ul>
                            </li>
                            <li><a href="infielder">選手団</a>
                                <ul>
                                    <li><a href="infielder">内野手</a></li>
                                    <li><a href="outfielder">外野手</a></li>
                                    <li><a href="catcher">捕手</a></li>
                                    <li><a href="pitcher">投手</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="../team/teamRank?year=2017">記録室</a>
                        <ul>
                            <li><a href="../team/teamRank?year=2017">チーム順位</a></li>
                            <li><a href="../team/teamRecord?year=2017">チーム記録</a></li>
                        </ul>
                    </li>
                    <li><a href="../sboard/freeboard">掲示板</a>
                        <ul>
                            <li><a href="../sboard/freeboard">自由掲示板</a></li>
                            <li><a href="../sboard/deal">チケット譲渡掲示板</a>
                            </li>
                            <li><a href="../sboard/notice">公知事項</a></li>
                        </ul>
                    </li>
                    <c:if test="${empty login }">
                    <li><a href="../user/member">ログイン</a></li>
                    </c:if>
                    <c:if test="${not empty login }">
                    <li><a href="../user/logout">ログアウト</a>
                    </c:if>
                </ul>
            </nav>

        </div>
        <br>
        <br>
			 
        <!-- Banner -->
        <section id="banner">
    
            <header>
                <h2>監督紹介</h2>
            </header>
            <select class="select_list" onchange="move_to_Page(this.value)">
				    <option value="supervisor" selected>감독</option>
				    <option value="coach">코치</option>
				</select>
            <div class="player_wrap">
        
                <div class="top">
                
                    <div class="left_image">
                    
                        <img src="../resources/images/jowonwoo.PNG" alt="">
                    </div>
                    <div class="right_content">
                        <div class="player_position">
                            <h4>監督</h4>
                        </div>
                        <div class="en_name">
                            <p>jo won woo</p>
                        </div>
                        <br>
                        <div class="introduce_player">
                            <table>
                                <tr>
                                    <th>生年月日</th>
                                    <th>1971年04月08日</th>
                                </tr>
                                <tr>
                                    <td>学歴</td>
                                    <td>水営小学校-釜山中学校-釜山高校-高麗大学</td>
                                </tr>
                                <tr>
                                    <td>入団年度</td>
                                    <td>2011年</td>
                                </tr>
                                <tr>
                                    <td>経歴</td>
                                    <td>1994 ~ 1999 サンパンウルレイダス1994年2次5位</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2000 ~ 2005 SKワイバーンス外野手</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2005 ~ 2008 ハンファイーグルス外野手</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2008 ~ 2009 ハンファイーグルス守備コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2010 千葉ロッテマリーンズ研修コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2011 ロッテジャイアンツ守備(外野)コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2012 ロッテジャイアンツ作戦/走塁コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2013 トゥサンベアース作戦/走塁コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2014 ~ 2015년 SKワイバーンス走塁/外野守備コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2015 SKワイバーンス作戦/走塁コーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2015 ~SKワイバーンス ヘッドコーチ</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>2015.10.08ロッテジャイアンツ監督選任</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </section>

        <!-- Carousel -->

        <!-- Main -->

        <!-- Features -->


        <!-- Footer -->
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="12u">

                        <!-- Contact -->
                        <section class="contact">
                            <header>
                                <ul class="icons">
                                    <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                                    <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                                    <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                                    <li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
                                    <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
                                    <li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
                                </ul>
                            </header>
                        </section>

                        <!-- Copyright -->
                        <div class="copyright">
                            <ul class="menu">
                                <li>&copy; Untitled. All rights reserved.</li>
                                <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="../resources/assets/js/jquery.min.js"></script>
    <script src="../resources/assets/js/jquery.dropotron.min.js"></script>
    <script src="../resources/assets/js/jquery.scrolly.min.js"></script>
    <script src="../resources/assets/js/jquery.onvisible.min.js"></script>
    <script src="../resources/assets/js/skel.min.js"></script>
    <script src="../resources/assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="../resources/assets/js/main.js"></script>

</body>

</html>