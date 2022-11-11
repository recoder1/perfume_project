<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<html lang="zxx" class="dark">
<head>
   <title>오드비 - Eau de Vie</title>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="pxdraft" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Crikon – Multipurpose Template" />
    <meta name="description" content="Crikon – Multipurpose Template" />
    <!-- title -->
    <title>오드비 - Eau de Vie</title>
    <!-- font : Google Noto Serif Korean -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/syh_theme.css" rel="stylesheet">
	<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
	
	
    <style>
        *{
        	font-family: 'Noto Serif KR', serif;
        }
    </style>    

</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>

	<!-- main -->
    <main>

        <!-- Section -->
		<section>
			<% session.invalidate(); %>
			<% request.getSession(true); %>
			<% response.sendRedirect("../home/home.do"); %>
		</section>
         <!-- End Section -->
    </main>
    <!-- End Main -->
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include> 
	
</body>
</html>