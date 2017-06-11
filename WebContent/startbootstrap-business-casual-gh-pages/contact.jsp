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
    <link href="css/map.css" rel="stylesheet">
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
    <div class="brand"> 사이트</div>
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contact
                        <strong>Kim Hee_seob</strong>
                    </h2>
                    <hr>
                </div>                     <!--API를 사용해서 지도를 구현-->
                <div id = "map" class="col-md-8">
                   <div id="daumRoughmapContainer1480898919210" class="root_daum_roughmap root_daum_roughmap_landing"></div>

					<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1480898919210",
							"key" : "eitj",
							"mapWidth" : "auto",
							"mapHeight" : "auto",
							"width" : "100px"
						}).render();
					</script>
                </div>
                <div class="col-md-4">
                    <p>Phone:
                        <strong>123.456.7890</strong>
                    </p>
                    <p>Email:
                        <strong><a href="mailto:minstin@naver.com">minstin123@naver.com</a></strong>
                    </p>
                    <p>Address:
                        <strong>경기도 구리시
                            <br>동구릉로 아무개</strong>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contact
                        <strong>form</strong>
                    </h2>
                    <hr>
                    <p style="text-align:center;">문의 사항이나 문제가 있을 때 메일을 보내주시기 바랍니다.</p>
                    <form role="form">
                        <div class="row">
                            <div class="form-group col-lg-4">
                                <label>Name</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-lg-4">
                                <label>Email Address</label>
                                <input type="email" class="form-control">
                            </div>
                            <div class="form-group col-lg-4">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control">
                            </div>
                            <div class="clearfix"></div>
                            <div class="form-group col-lg-12">
                                <label>Message</label>
                                <textarea class="form-control" rows="6"></textarea>
                            </div>
                            <div class="form-group col-lg-12">
                                <input type="hidden" name="save" value="contact">
                                <button type="submit" class="btn btn-default"><a href="mailto:minstin@naver.com">Submit</a></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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
