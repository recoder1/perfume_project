<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

    <div class="wrapper">
    <!-- Header Height -->
    <div class="header-height-bar"></div>
        <header class="main-header-01 navbar-light fixed-top header-height bg-white shadow-sm">
            <nav class="navbar navbar-expand-lg" style="padding:0;">
                <div class="container">
                    <!-- Logo Start -->
                    <a href="../home/home.do" class="header-navbar-brand">
                        <img class="logo-dark" src="../resources/assets/img/logo_black.png" style="width: 97.59px; height: 30px;">
                    </a>
                    <!-- Logo End -->
                    <!-- Collapse Start -->
                    <div class="navbar-collapse collapse" id="main_header_nav" style="flex-grow: 0">
                        <!-- Navigation Start -->
                        <ul class="navbar-nav @@navbarClass">
                            <li class="nav-item">
                                <a class="nav-link" href="../product/product_list.do?brand=all">향수리스트</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                    향수공부
                                </a>
                                <ul class="dropdown-menu start">
                                   <li><a class="dropdown-item" href="../learn/2_terms.do">기본용어</a></li>
                                    <li><a class="dropdown-item" href="../learn/2_notes.do">향조</a></li>
                                    <li><a class="dropdown-item" href="../learn/2_houses.do">하우스</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../recommendation/3_questions.do">향수추천</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                    커뮤니티
                                </a>
                                <ul class="dropdown-menu start">
                                    <li><a class="dropdown-item" href="../4_community/story_list.do">향수이야기</a></li>
                                    <li><a class="dropdown-item" href="../4_community/market_list.do">중고거래</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="../hyangsta/5_hyangsta_all.do" data-bs-toggle="dropdown">
                                    향스타그램
                                </a>
                                <ul class="dropdown-menu start">
                                    <li><a class="dropdown-item" href="../hyangsta/5_hyangsta_all.do">ALL</a></li>
                                    <li><a class="hyFwBtn dropdown-item" href="../hyangsta/5_hyangsta_followPList.do?user_id=${sessionScope.user_id}">Following</a></li>
                                    <li><a class="hyMyBtn dropdown-item" href="../hyangsta/5_hyangsta_userlist.do?user_id=${sessionScope.user_id}">My</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- Navigation End -->
                    </div>
                    <!-- Header Right -->
                    <div class="nav flex-nowrap align-items-center header-right">
                        <!-- Acount -->
                        <div class="nav-item dropdown">
                            <a class="nav-link" href="#" role="button" id="dropdown_myaccount" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="fi-user"> </i>
                            </a>
                            <!-- 로그인 유무에 따라 보이는거 달라져야 함 -->
                            <div class="dropdown-menu dropdown-menu-end mt-2 shadow"
                                aria-labelledby="dropdown_myaccount">
                                <c:choose>
									<c:when test="${empty sessionScope.user_id}">
										<a class="dropdown-item" href="../user/6_myPage_login.do">로그인</a>
                                		<a class="dropdown-item" href="../user/6_myPage_sign-up.do">회원가입</a>
									</c:when>
									<c:otherwise>
										<a class="dropdown-item" href="#">${sessionScope.nickname} 님</a>
                                		<a class="dropdown-item" href="../user/6_myPage_account-profile.do">마이페이지</a>
                                		<a class="dropdown-item" href="../user/logout_ok.do">로그아웃</a>
									</c:otherwise>
								</c:choose>
                            </div>
                        </div>
                        <!-- Mobile Toggle -->
                        <button class="navbar-toggler ms-2" type="button" data-bs-toggle="collapse"
                            data-bs-target="#main_header_nav" aria-controls="main_header_nav" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <!-- End Mobile Toggle -->
                    </div>
                    <!-- Header Right End -->
                </div>
            </nav>
        </header>
