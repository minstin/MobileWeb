<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

	<link href="css/air.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/modal.css" rel="stylesheet">
    <link href="../css/jquery.fancybox.css" rel="stylesheet">    
    <link href="css/start1.css" rel="stylesheet">    
    <link href="css/login.css" rel="stylesheet">
    <link href="css/business-casual.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

</head>
<body>

 	<script src="../js/jquery-2.1.4.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.fancybox.js"></script>
    <script src="../js/bootstrap-hover-dropdown.js"></script>
    <script src="../js/animatescroll.min.js"></script>
    <script src="../js/simpleparallax.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
<script>

function newuser() {
  	window
 			.open(
   					"new_user.jsp",
   					"newuser",
   					"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=300,height=240");
}

$(document).ready(function(){
  		$(".fancybox").fancybox({
   			openEffect : 'none',
   			coloseEffect : 'none'
  		});
  		$("#btn_header_login").on("click", function() {
  			$('#popup_mask').css("display", "block");
  		});
  		$("#btn_header_logingg").on("click", function() {
  			$('#popup_mask').css("display", "block");
  		});

});


</script>
	<a href="#" id="btn_header_login" class="link">
		<img src="img/login.png" alt="로그인" class="icon">
		<span class="text">로그인</span>
	</a>
    <div class="brand">사이트</div>
    <div class="address-bar">Gachon University | Department of Computer Science | 201233483</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" style="margin-right:-90px;" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="kimpo.jsp">실시간 항공정보</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li>
                    	<a href="javascript:newuser()">New user</a>
                    </li>
                    <li>
                    	<a id="btn_header_logingg">login</a>
                    </li> 
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <div class="container">

        <div class="row">
        <div class="box">
        <section role="main" id="content" class="content">
		<div class="xe_content xe-widget-wrapper " style="float: left; width: 100%; height: auto; border: 0px solid rgb(46, 46, 46); margin: 0px 0px 0px; background-image: none; background-position: 0% 0%; background-repeat: repeat;">
		<div id = "airtext" style="padding:0px 0px 0px 0px !important;">
		<p>실시간 운항정보</p>
		<p><a href="kimpo.jsp" style=" display:inline-block; text-align:center;-moz-border-radius:30px;-webkit-border-radius:30px;border-radius:30px;color:#ffffff;padding:0 20px;text-decoration:none;box-shadow: 0 2px 0 0 #ccc; margin:5px;  width:auto;  height:auto; line-height:30px; font-size:17px; background-color:#5D478B;  ">인천공항 & 김포공항</a>

		<a href="jeju.jsp" style=" display:inline-block; text-align:center;-moz-border-radius:30px;-webkit-border-radius:30px;border-radius:30px;color:#ffffff;padding:0 15px;text-decoration:none;box-shadow: 0 2px 0 0 #ccc; margin-left:5px;  width:auto;  height:auto; line-height:30px; font-size:17px; background-color:#030303;  ">부산공항 & 제주공항</a></p>

</div></div>
<div id = "airtext" class="col-lg-6 text-center">
<span>인천공항(ICN)항공편 실시간 현황</span>

<p><iframe id="airair" frameborder="1" height="600" src="http://www.flightstats.com/go/weblet?guid=34b64945a69b9cac:7f3d2eef:12af6e7adc5:7ba3&amp;weblet=status&amp;action=AirportFlightStatus&amp;airportCode=ICN&amp;airportQueryType=0" width="500"></iframe></p>
</div>

<div id = "airtext" class="col-lg-6 text-center">
<span>김포공항(GMP)항공편 실시간 현황</span>

<p><iframe id="airair" frameborder="2" height="600" src="http://www.flightstats.com/go/weblet?guid=34b64945a69b9cac:7f3d2eef:12af6e7adc5:7ba3&amp;weblet=status&amp;action=AirportFlightStatus&amp;airportCode=GMP&amp;airportQueryType=0" width="500"></iframe></p>


</div>
	</div>
	</section>
</div>
</div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

<div id = "popup_mask" style="opacity:0.9; display: none;">
<div id = "popup_login" class="login_area popup_window" style="display:block; width:375px;">
	<button type="button" class="btn btn-default">닫기</button>
	<form name="login_form" id="login_form" method="post"></form>
	<div class="form_area">
		<div class="title_box">
			<p class = "title">로그인</p>
		</div>
		<sns:login />
		<button style="width:90%; margin:15px 0 30px 15px;"><a href="javascript:newuser()">New user</a></button>
   </div>
</div>
</div>
</body>
<script>
$(".btn-default").on("click", function() {
	$('#popup_mask').css("display", "none");
});
</script>
</html>
