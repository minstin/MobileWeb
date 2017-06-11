<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<%@ page import="java.sql.*" %>
<html lang="ko">
<!-- 단일페이지가 아니기 때문에 구성되는 페이지는 따로 만들었습니다. -->
<head>
<!-- 필요한 css, js 추가하기 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/modal.css" rel="stylesheet">
    <link href="../css/jquery.fancybox.css" rel="stylesheet">      
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
//로그아웃 시에 표시하지않는 함수
function logout(){
	$('.tagbar').css("display", "none");
}
//회원가입시 필요한 함수
function newuser() {
  	window.open(
   					"new_user.jsp",
   					"newuser",
   					"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=300,height=240");
}
//팝업창 띄우기
function onPopup(){
		popup = window.open('board/write.jsp', 'boardcss_write','width=400,height=600,scrolling=no, scrollbars=no');
	    popup.focus();
}

$('.carousel').carousel({
    interval: 100 
});

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
                <a class="navbar-brand" href="index.jsp">Business Casual</a>
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
<!-- 각각의 정보를 모아서 모달과 fancy박스로 구현 -->
        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                                    <!-- 숨겨진 모달창을 띄우기 위한 점수 -->
                    <div id="carousel-example-generic"  class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="img/main1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/main2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/main3.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <h2 class="brand-before">
                        <small>Welcome to</small>
                    </h2>
                    <h1 class="brand-name">All of the trip</h1>
                    <hr class="tagline-divider">
                    <h2>
                        <small>By
                            <strong>Kim Hee_seob</strong>
                        </small>
                    </h2>
                </div>
            </div>
        </div>

        <div class="row">
			<div class = "box">
                	<div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-3" data-toggle="modal">
                        <div class="thumbnail">
                            <img src="../img/방콕.jpg" alt="">
                            <div class="caption">
                                 <h4>태국 - 방콕</h4>
                                <p>태국의 수도이자 동남아시아 최고의 대도시인 방콕! 골목골목 노점 식당들과 야시장의 먹거리..</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                                
                            </div>
                        </div>
                       </article>
                    </div>
                	
                	<div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-4" data-toggle="modal">
                        <div class="thumbnail">
                            <img src="../img/푸켓.jpg" alt="">
                            <div class="caption">
                                <h4>태국 - 푸켓</h4>
                                <p>고운 백사장과 아름다운 해안선, 석회암 절벽이 어루러진 최고의 휴양지! 매력적인 여행지.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                      </article>
                    </div>
                	
                    <div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-1" data-toggle="modal">
                    	<div class="thumbnail">
	               			<img src="../img/오사카성.jpg" alt="">
                  			<div class="caption">
                                <h4>일본 - 오사카</h4>
                                <p>그 누구와 함께 걸어도 즐거운 추억을 가져다 줄 오사카. 여행의 각양각색 매력을 느끼고 싶다면 ..</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </article>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-5" data-toggle="modal">
                        <div class="thumbnail">
                            <img src="../img/보라카이.jpg" alt="">
                            <div class="caption">
                                <h4>동남아 - 필리핀</h4>
                                <p>말이 필요없는 푸른 바다.  다양한 먹거리와 볼거리가 가득한 곳. 가장 많이 찾는 휴양지중 한 곳</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </article>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-6" data-toggle="modal">
                        <div class="thumbnail">
                            <img src="../img/중국.jpg" alt="">
                            <div class="caption">
                                <h4>아시아 - 중국</h4>
                                <p>세계에서 가장 많은 인구수를 자랑하는 중국. 한국과 특히 가깝기 때문에 많이 찾는다.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                      </article>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                    <article class="list1" data-target="#modal-2" data-toggle="modal">
                        <div class="thumbnail">
                            <img src="../img/온천.jpg" alt="">
                            <div class="caption">
                                <h4>일본 - 후쿠오카</h4>
                                <p>오랜 역사를 가지고 있는 유후인 온천. 조용한 분위기와 예술성이 넘치는 거리를 느끼고 싶다면..</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </article>
                    </div>
                    
                <div class="modal fade" id="modal-1">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  일본 여행지 - 오사카</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★★★★</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                    <a class="fancybox" rel="list1" href="../img/list/유니버셜.jpg">
                    <a class="fancybox" rel="list1" href="../img/list/유니버셜2.jpg">
                    <a class="fancybox" rel="list1" href="../img/list/유니버셜3.jpg">
                    <a class="fancybox" rel="list1" href="../img/list/유니버셜4.jpg">
                    
                   		<img src="../img/list/유니버셜.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--유니버셜 스튜디오--
                        	<br><br>
                      		   할리우드 영화를 테마로 54만m2 부지 면적에(공원 면적 39만m2) 조성한 테마파크로, 아시아에서는 최초로 지어진 유니버설 계열의 테마 파크이다.
                      		  2001년 봄에 오픈하여 일본의 대표적인 테마파크로 자리 잡았다. 할리우드의 유명 감독인 스티븐 스필버그가 참여하여 공원을 
                      		   더욱 실감나는 영화 속 장소로 바꿔놓았다. 할리우드, 뉴욕, 주라기 파크, 워터월드, 샌프란시스코 등 영화를 몸으로 체험할 수 있는 여러 테마 지역으로 구성되며,
                      		   스릴 넘치는 놀이기구와 화려한 쇼로 가득 채워져 있다.
                      		  <br><br>
							   스튜디오와 고급 숍, 레스토랑이 모여 있는 영화의 거리 할리우드에서는 할리우드 영화를 이용한 다양한 어트랙션을 즐길 수 있다. 
							   경이로운 4D 체험을 해볼 수 있는 ‘슈렉 4D 어드벤처’, 세계적인 아동 프로그램을 재현한 ‘세서미 스트리트 4D 무비 매직’ 등이 인기가 높다. 
							   이 밖에도 새로운 테마를 선보이는 것도 게을리하지 않는다. 2012년에 탄생한 유니버설 원더랜드는 세서미 스트리트, 헬로 키티,
							   스누피 등의 캐릭터를 테마로 한 놀이동산이다. 특히 2014년에는 '해리포터 앤 더 포비든 저니', '플라이트 오브 더 히포그리프' 두 가지 어트랙션과 
							   다양한 엔터테인먼트 코너를 선보인 해리포터 에어리어가 새로 생기면서 더욱 큰 인기를 끌고 있다.
                      	</p>
                      </div>
                      <a class="fancybox" rel="list2" href="../img/list/오사카성1.jpg">
                    	<a class="fancybox" rel="list2" href="../img/list/오사카성2.jpg">
                   	 	<a class="fancybox" rel="list2" href="../img/list/오사카성3.jpg">
                   	 	<a class="fancybox" rel="list2" href="../img/list/오사카성4.jpg">
                    
                   		<img src="../img/list/오사카성1.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--오사카성--
                        	<br><br>
                        	 오사카성은 바로 도요토미 히데요시가 일본이 통일이 되고 권력을 과시하기 위해서 만든 성이다.
							이 성은 1583년에 완성되었지만 온전히 보존되지 않아서 1931년에 복원했다고 알려져 있다.
							최근 새롭게 정비를 하면서 많은 사람들에게 인기를 끌기 시작했으며<br> 이 성의 모습 뿐만 아니라 주변에 있는 풍경들이 아름답기 때문에 더 많은 인기를 끈 성이다.
							<br><br>
							성과 성 주변에는 계절에 따라 변하는 꽃들과 나무들이 있었기 때문에 사계절 내내 멋있다는 평을 받고 있다.
							야경 또한 정말 아름답다고 알려져 있으며, 오사카를 간다면 꼭 가보아야 할 명소로 꼽힌다.
                        </p>
                      </div>
                      <a class="fancybox" rel="list3" href="../img/list/먹거리1.jpg">
                    	<a class="fancybox" rel="list3" href="../img/list/먹거리2.jpg">
                   	 	<a class="fancybox" rel="list3" href="../img/list/먹거리3.jpg">
                   	 	<a class="fancybox" rel="list3" href="../img/list/먹거리4.jpg">
                   	 	<a class="fancybox" rel="list3" href="../img/list/먹거리5.jpg">
                   	
                   		<img src="../img/list/먹거리5.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--길거리 음식--
                        	<br><br>
                         	 오사카에 가면 오사카 유명 길거리 음식을 먹어 보지 않을 수 없을 정도로 많이 발전해 있는 곳으로 알려져 있다.
                         	 실제로 정말 다양한 음식들이 많으며, 해산물 같은 음식들도 길거리에서 팔 정도로 다양하다.
                         	 여행을 가기전에 먹거리를 정해보고 가길 추천한다.
                        </p>
                      </div>
                    </div>
                    <!-- Modal view footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              </div>
              	<div class="modal fade" id="modal-2">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  일본 여행지 - 후쿠오카</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★☆☆☆</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                    <a class="fancybox" rel="huku1" href="../img/huku/유후인1.jpg">
                    <a class="fancybox" rel="huku1" href="../img/huku/유후인2.jpg">
                    <a class="fancybox" rel="huku1" href="../img/huku/유후인3.jpg">
                    <a class="fancybox" rel="huku1" href="../img/huku/유후인4.jpg">
                    
                   		<img src="../img/huku/유후인1.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--온천의 도시 유후인--
                        	<br><br>
                      		   유후인 온천은 일본 규슈 오이타 현 유후 시에 있는 온천이다. 유후인 온천은 벳부, 구사쯔에 이어서
                      		   일본에서 3번째로 용출량이 많은 온천이다. 유후인 역에 내리자마자, 유후다케라는 산이 웅장하면서도 자애로운
                      		   모습으로 유후인을 감싸고 있는 것을 발견할 수 있으며, 유후인 역에서 긴린코라는 호수까지 이르는 길에는
                      		   다양한 상점들과 온천여관, 미술관 등의 시설들이 이어져있다.
                      		<br><br>
                      			온천여행을 계획하고 있다면 매력적인 곳이니 가보길 추천한다.
                      	</p>
                      </div>
                      <a class="fancybox" rel="huku2" href="../img/huku/나가사키1.jpg">
                    	<a class="fancybox" rel="huku2" href="../img/huku/나가사키2.jpg">
                   	 	<a class="fancybox" rel="huku2" href="../img/huku/나가사키3.jpg">
                   	 	<a class="fancybox" rel="huku2" href="../img/huku/나가사키4.jpg">
                    
                   		<img src="../img/huku/나가사키2.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--나가사키--
                        	<br><br>
                        	유명한 항구도시로, 짬뽕과 카스테라가 유명한 지역이다.
                        	시내에 노면 전차가 다니는 특이한 지역이다. 좀 더 이국적인 풍경을 느낄 수 있으며, 시내크기는 그렇게 크지 않기 때문에
                        	중간중간 전차와 도보를 적절히 타면서 하루정도 쉬고 싶은 사람에게 추천하는 여행지다.
                        	다른 지역에 비해 볼 것이 많이 없기 때문에 주의하기 바란다.
                        </p>
                      </div>
                      <a class="fancybox" rel="huku3" href="../img/huku/텐만궁1.jpg">
                    	<a class="fancybox" rel="huku3" href="../img/huku/텐만궁2.jpg">
                   	 	<a class="fancybox" rel="huku3" href="../img/huku/텐만궁3.jpg">

                   	
                   		<img src="../img/huku/텐만궁1.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--다자이후 텐만궁--
                        	<br><br>
                         	작은 역사의 마을 다자이후에 있는 텐만구는 일본 텐만구 신사의 총본산이며, 학문의 신을 모시는 신사로 유명하다.
                         	여유를 즐기며 구경하기엔 안성맞춤인 곳으로, 날씨가 좋은 날 간다면 눈구경하기에 정말 좋은 곳이라고 한다.
                         	쇼핑보다 구경에 중점을 두는 사람에게 추천한다.
                        </p>
                      </div>
                    </div>

                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              </div>
           		<div class="modal fade" id="modal-3">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  태국 여행지 - 방콕</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★★★☆</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                    <a class="fancybox" rel="bang1" href="../img/bang/아시아티그2.jpg">
                    <a class="fancybox" rel="bang1" href="../img/bang/아시아티그3.jpg">
                    <a class="fancybox" rel="bang1" href="../img/bang/아시아티그4.jpg">
                    <a class="fancybox" rel="bang1" href="../img/bang/아시아티그5.jpg">
                    <a class="fancybox" rel="bang1" href="../img/bang/아시아티그1.jpg">
                    
                   		<img src="../img/bang/아시아티그1.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--아시아티크--
                        	<br><br>
                        	| 추천 방문 시간<br>
                        	| PM 05:30 ~ 07:30<br><br>
                      		   최근에 방콕의 핫 플레이스로 급상승하고 있는 아시아티크(AsiaTique)는
                      		   여행자들을 위한 슈핑타운이라고 할 수 있다. 선착장에서 무료 셔틀 보트 서비스가
                      		   제공되고 있기 때문에 부담 없이 갈 수 있다는 장점도 있다. 
                      		<br><br>
                      		물론 가격이 조금 비싼 편이지만, 
                      		여행자들을 위한 쇼핑 타운인 만큼 새 상품들이 깔끔하게 정돈되어 있기 때문에 믿을 수 있는 장점도 있다.
                      		쇼핑은 물론 다양한 먹거리가 존재하기 때문에 여유가 된다면 들러보길 바란다.
                      	</p>
                      </div>
                      <a class="fancybox" rel="bang2" href="../img/bang/데크1.jpg">
                    	<a class="fancybox" rel="bang2" href="../img/bang/데크2.jpg">
                   	 	<a class="fancybox" rel="bang2" href="../img/bang/데크3.jpg">
                   	 	<a class="fancybox" rel="bang2" href="../img/bang/데크4.jpg">
                    
                   		<img src="../img/bang/데크1.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--더 데크--
                        	<br><br>
                        	| 추천 방문 시간<br>
                        	| PM 05:30 ~ 08:00<br><br>
                        	일몰이 지는 시간에 더 데크(The Deck)에서 시원한 맥주 한 잔과 함께 바라보는 짜오프라야 강과
                        	왓 아룬의 야경은 방콕 최고의 뷰중의 하나라고 알려져 있다. 분위기 역시 최고이므로 연인과 함께
                        	여행을 온분들이라면 함께 보내기에 더없이 좋은 곳인 만큼 반드시 들리는 필수코스다.
                        	</p>
                      </div>
                      <a class="fancybox" rel="bang3" href="../img/bang/카오산1.jpg">
                    	<a class="fancybox" rel="bang3" href="../img/bang/카오산2.jpg">
                   	 	<a class="fancybox" rel="bang3" href="../img/bang/카오산3.jpg">
                   	 	<a class="fancybox" rel="bang3" href="../img/bang/카오산4.jpg">
                   	 	<a class="fancybox" rel="bang3" href="../img/bang/카오산5.jpg">

                   	
                   		<img src="../img/bang/카오산1.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--카오산 로드--<br><br>
                        	| 추천 방문 시간<br>
                        	| PM 05:30 ~ 08:00
                        	<br><br>
                         	저렴한 숙소, 여행자 입맛에 맞는 다양한 음식, 활기 넘치는 사람들 그리고 전국으로 연결되는 교통 편과
                         	투어 신청 등 여행에 필요한 모든 것을 해결할 수 있는 태국 최대의 여행자 거리인 까오산 로드는 방콕 여행에서 결코 빼놓을 수 없는
                         	최고의 인기 코스다. 유흥을 즐길줄 안다면 나이트 타임에 가보길 바란다.
                         	<br><br>
                         	길거리 곳곳에 놓여 있는 다양한 태국 음식들을 음미하고, 힘이 들 때면 저렴한 마사지로 피로를 풀기도 하고,
                         	외국인들과 어울려 지낼수 있는 곳으로 가격 역시 저렴하니 반드시 들리는 필수코스
                         	</p>
                      </div>
                    </div>
                    <!-- Modal view footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              </div>
           		<div class="modal fade" id="modal-4">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  태국 여행지 - 푸켓</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★★★☆</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                    <a class="fancybox" rel="poo1" href="../img/poo/푸켓1.jpg">
                    <a class="fancybox" rel="poo1" href="../img/poo/푸켓2.jpg">
                    <a class="fancybox" rel="poo1" href="../img/poo/푸켓3.jpg">
                    <a class="fancybox" rel="poo1" href="../img/poo/푸켓4.jpg">
                    <a class="fancybox" rel="poo1" href="../img/poo/푸켓5.jpg">
                    
                   		<img src="../img/poo/푸켓3.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--TRISARA RESORT--
                        	<br><br>
                        	| 성수기 : 11.01 ~ 4.30<br>
                        	| 비수기 : 5.01 ~ 10.31<br><br>
                      		푸켓공항에서 가장 가까운 근린 공원 안쪽에 위치하고 있다. 
                      		최고 럭셔리 리조트답게 웰컴드링크와 웰컴프루트는 기본이다. 트리사라의 풀빌라는 지내는 동안
                      		매일매일 정성을 들여 만든 쿠키와 과일을 제공한다. 이 리조트의 명품 포인트는
                      		바다와 수영장이 하나의 수평선으로 합쳐지는 개별 풀빌라의 인피니티 수영장이다.  
                      		<br><br>
                      		이곳은 공항에서 30분거리로 가까운 거리에 있기 때문에 심심하다고 느껴지면 파통거리로 나가 밤문화를 즐길 수도 있다.
                      		낮에는 각국의 여행객들과 팡아만 투어나 꼬 홍 끄라비 투어와 같은 호핑 투어도 즐길 수 있다.
                      		유명한 리조트인 만큼 서비스 역시 확실하다.
                      		</p>
                      </div>
                      <a class="fancybox" rel="poo2" href="../img/poo/리조트1.jpg">
                    	<a class="fancybox" rel="poo2" href="../img/poo/리조트2.jpg">
                   	 	<a class="fancybox" rel="poo2" href="../img/poo/리조트3.jpg">
                   	 	<a class="fancybox" rel="poo2" href="../img/poo/리조트4.jpg">
                    
                   		<img src="../img/poo/리조트3.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--Amanpuri RESORT--
                        	<br><br>
                        	| 성수기 : 11.01 ~ 4.30<br>
                        	| 비수기 : 5.01 ~ 10.31<br><br>
                        	아만푸리는 1988년에 오픈한 전통있는 리조트. 화려함의 극치로 명성이 자자하지만, 직접 가보면 규모도 아담하고
                        	인테리어도 과하지않아 편안한 느낌을 받는다고 한다. 작고 심플하지만 최고의 휴양을 위한 곳이라고 알려져 있다.
                        	손님도 많지 않기 때문에 조용한 분위기의 고급스러운 곳을 원한다면 추천한다.
                        	</p>
                      </div>
                      <a class="fancybox" rel="poo3" href="../img/poo/고대1.jpg">
                    	<a class="fancybox" rel="poo3" href="../img/poo/고대2.jpg">
                   	 	<a class="fancybox" rel="poo3" href="../img/poo/고대3.jpg">
                   	 	<a class="fancybox" rel="poo3" href="../img/poo/고대4.jpg">
                   	 	<a class="fancybox" rel="poo3" href="../img/poo/고대5.jpg">
                   	
                   		<img src="../img/poo/고대4.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--Phuket KeeMala--
                        	<br><br>
                        	| 성수기 : 11.01 ~ 4.30<br>
                        	| 비수기 : 5.01 ~ 10.31<br><br>
                        	푸켓 키말라는 최근인 15년 12월에 오픈한 자연과 조화된 독특하고 호화로운 리조트라고 할 수 있다.
                        	고대의 4가지 라이프 스타일에서 영감을 받은 설계와 디자인이 특징인 곳이다.
                        	실제로 고대 푸켓의 4개의 부족 이야기와 문화, 전통, 라이프스타일로부터 영감을 받아 만들어졌다고 한다.
                        	호화로운 여행을 기대하는 사람이 아니라면 가볼 만 하다.
                        	</p>
                      </div>
                    </div>
                    <!-- Modal view footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              </div>
				<div class="modal fade" id="modal-5">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  동남아 여행지 - 필리핀</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★★★☆</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                      <a class="fancybox" rel="필1" href="../img/필/루손1.jpg">
                    	<a class="fancybox" rel="필1" href="../img/필/루손2.jpg">
                   	 	<a class="fancybox" rel="필1" href="../img/필/루손3.jpg">
                   	 	<a class="fancybox" rel="필1" href="../img/필/루손4.jpg">

                   		<img src="../img/필/루손3.jpg" alt="">
                 		</a>
                      	<div class="modal-infotext">
                        <p class="p-infotext">
                        	--루손섬--
                        	<br><br>
                        	| 건기 : 12.01 ~ 05.31<br>
                        	| 우기 : 06.01 ~ 11.30<br>
                        	<br>
                      		루손섬은 필리핀 그 자체라고 해도 과언이 아닐 정도로 산, 들, 바다 그리고 
                      		그곳의 문화까지 다양한 경험을 할 수 있는 곳이다. 이 섬은 산이 많고 바다 또한 서핑을
                      		즐기기에 적당한 파도를 가지고 있기 때문에 건기에 여행하기에 적합하다. 스페인 식민지 시절의 낭만을 그대로 간직한 마을도
                      		있기 때문에 세부, 보라카이와는 또 다른 매력을 느낄 수 있는 여행지다.
                      		이 곳 역시 휴양지로는 빼놓을 수 없는 아름다운 해변과 전망을 가지고 있다. 해변 스포츠 역시 저렴한 가격에 이용할 수 있다.
                      		<br><br>
                      		또한 고래상어와의 물놀이를 꿈꾸는 여행객들에게는 꿈과 같은 섬이기도 하다. 돈솔이라는 여행지로 실제로
                      		바닷속에 들어가 고래상어를 만나볼 수 있다고 한다. 가격 역시 4만원대로 저렴하기 때문에 추천한다.
                      		</p>
                    </div>
                    <a class="fancybox" rel="필2" href="../img/필/보라카이1.jpg">
                    <a class="fancybox" rel="필2" href="../img/필/보라카이2.jpg">
                    <a class="fancybox" rel="필2" href="../img/필/보라카이3.jpg">
                    <a class="fancybox" rel="필2" href="../img/필/보라카이4.jpg">
                    
                   		<img src="../img/필/보라카이4.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--보라카이섬--
                        	<br><br>
                        	| 건기 : 12.01 ~ 05.31<br>
                        	| 우기 : 06.01 ~ 11.30<br>
                        	<br>
                      		보라카이는 필리핀 중부 파나이섬의 북쪽에 위치한 아름다운 섬이다. 한국과의 거리가 비행기로 5시간밖에 걸리지 않기 때문에,
                      		많은 직장인 및 학생들이 휴가내서 가장 많이 떠나는 지역이다.
                      		<br><br>
                      		세계 3대 해변으로 불리는 화이트비치는 석화질로 된 새하얀 모래들로 유명하다.
                      		말이 필요없는 해변으로 매년 여행객을 사로잡고 있다.
                      		</p>
                      </div>
                      <a class="fancybox" rel="필3" href="../img/필/세부1.jpg">
                    	<a class="fancybox" rel="필3" href="../img/필/세부2.jpg">
                   	 	<a class="fancybox" rel="필3" href="../img/필/세부3.jpg">
                   	 	<a class="fancybox" rel="필3" href="../img/필/세부4.jpg">
                    
                   		<img src="../img/필/세부1.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--세부--
                        	<br><br>
                        	| 건기 : 12.01 ~ 05.31<br>
                        	| 우기 : 06.01 ~ 11.30<br>
                        	<br>
                      		세부는 필리핀 중남부 세부주의 주도, 비사얀제도에 딸린 섬이다. 보라카이와 역시 우리나라에선 가장 잘 알려져있는
                      		필리핀의 여행지로 꼽힌다. 아름다운 해변뿐만아니라 가격 역시도 저렴하게 다녀올 수 있기 때문에 인기다.
                      		리조트 역시 동남아라는 인식과는 다르게 수영장과 시설 등이 잘 되어있기 때문에 휴양지로써 많이 찾는다.
                      		해변 스포츠 역시 쉽게 접할 수 있고 가격 또한 저렴하기 때문에 패키지 여행을 계획한다면 추천한다.
                      		</p>
                      </div>
                      
                    </div>
                    <!-- Modal view footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              </div>
           		<div class="modal fade" id="modal-6">
                <div class="modal-dialog modal-lg modal-size">
                  <div class="modal-content">
                    <!-- Modal view header -->
                    <div class="modal-header">
                      <!-- 닫기(x) 버튼 -->
                      <button type="button" class="close" data-dismiss="modal">나가기</button>
                      <!-- header title -->
                      <h3 class="modal-title">
                      	  아시아 여행지 - 중국</h3>
                      <h4 class="modal-subtitle">
                      		평점 : ★★★☆☆</h4>
                    </div>
                    <!-- Modal view body -->
                    <div class="modal-body">
                      <!-- Modal view content load from DB -->
                      <a class="fancybox" rel="중1" href="../img/중/장1.jpg">
                    	<a class="fancybox" rel="중1" href="../img/중/장2.jpg">
                    	<a class="fancybox" rel="중1" href="../img/중/장3.jpg">
						<a class="fancybox" rel="중1" href="../img/중/장4.jpg">
                    	
                   		<img src="../img/중/장3.jpg" alt="">
                 		</a>
                      	<div class="modal-infotext">
                        <p class="p-infotext">
                        	--장가계--
                        	<br><br>
                        	| 사계절 관광 가능<br>
                        	| 추천 : 가을
                        	<br>
                        	<br>
                      		대자연속으로 빠지게 되는 장가계. 장가계는 사계절 관광이 가능한 지역으로 불린다. 여름에는 한국보다
                      		조금 더 덥고 겨울에는 조금 더 따뜻하다고 한다. 사계절 모두 매력이 다르다고 알려져 있으나 여름에는 한국보다
                      		더 덥기 때문에 떠난다면 가을을 계획하기 바란다. 장가계에서 가장 높은 산인 천문산은 세계에서 가장 긴 케이블카를
                      		타고 올라갈 수 있으며 모노레일도 설치가 되어있기때문에 전경을 편하게 구경할 수 있는 매력적인 곳이다.
                      		</p>
                    </div>
                    <a class="fancybox" rel="중2" href="../img/중/귀양1.jpg">
                    <a class="fancybox" rel="중2" href="../img/중/귀양2.jpg">
                    <a class="fancybox" rel="중2" href="../img/중/귀양3.jpg">
                    
                   	<img src="../img/중/귀양2.jpg" alt="">
                 	</a> 
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--귀양--
                        	<br><br>
                        	| 사계절 관광 가능<br>
                        	| 추천 : 초여름
                        	<br>
                        	<br>
                      		상당히 낯설게 느낄 수 있는 도시명 이지만, 아시아 최대의 폭포이자 세계 4대 폭포의 위엄인 황과수 폭포가 있는 지역이다.
                      		황과수 폭포 뒤로 동굴이 있어서 황과수 폭포를 정말 코앞에서 구경할 수 있기 때문에 많이 찾는다.
                      		더불어 만개의 봉우리로 이루어진 만봉림에서 소수만족들의 삶을 엿볼 수 있으며 대자연 그대로를 간직한 도시로
                      		파란 하늘과 맑은 공기를 느낄 수 있다.
                      		</p>
                      </div>
                    	<a class="fancybox" rel="중3" href="../img/중/리장.jpg">
                    	<a class="fancybox" rel="중3" href="../img/중/리장2.jpg">
                    	<a class="fancybox" rel="중3" href="../img/중/리장3.jpg">
                    	<a class="fancybox" rel="중3" href="../img/중/리장4.jpg">
                    	
                   		<img src="../img/중/리장4.jpg" alt="">
                 		</a>
                      <div class="modal-infotext">
                        <p class="p-infotext">
                        	--리장--
                        	<br><br>
                        	| 사계절 관광 가능<br>
                        	| 추천 : 가을
                        	<br>
                        	<br>
                      		여러 문화와 전통이 있는 도시로 중국의 고택과 웅장한 사자산의 조화를 느낄 수 있는 도시다.
                      		전세계 배낭여행자들의 로망인 도시이기도 하며 낮에는 자연과 어우러지는 도시의 모습을 느낄 수 있으며,
                      		밤에는 조명이 비추는 고택의 모습 또한 입이 벌어진다고 한다. 저녁에도 볼거리와 먹거리가 가득한 도시로 많은 외국인이 찾는다.
                      		유네스코 문화유산으로 지정된 리장 역시 멀지 않은 곳으로 추천하는 여행지다.
                      		</p>
                      </div>
                      
                    </div>
                    <!-- Modal view footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                  </div>
                </div>
              	</div>
              	</div>
              </div>
                    <!-- 게시판을 구현하기 위해 DB 소스를 활용 -->
        <div class="row" id="board">
            <div class="box">
                <div class="col-lg-12">
                <h2>후기 게시판</h2>
<%
		String jdbc_driver = "com.mysql.jdbc.Driver";
		String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
		String id = "jspbook";
		String pass = "1234";
		int total = 0;
		//데이터베이스는 jspdb로 설정하고 아이디와 비밀번호를 설정
		try {
			Connection 	conn = DriverManager.getConnection(jdbc_url,"jspbook","1234");
			Statement stmt = conn.createStatement();	
	
			String sqlCount = "SELECT COUNT(*) FROM board";
			ResultSet rs = stmt.executeQuery(sqlCount);
			
			if(rs.next()){
				total = rs.getInt(1);
			}
			rs.close();
			out.print("총 게시물 : " + total + "개");
			
			String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT from board order by NUM DESC";
			rs = stmt.executeQuery(sqlList);
			
%>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
  	<tr height="5"><td width="5"></td></tr>
 	<tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   	<td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   	<td width="73">번호</td>
   	<td width="350">제목</td>
   	<td width="70">작성자</td>
   	<td class="day" width="164">작성일</td>
   	<td width="89">조회수</td>
   	<td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
  	</tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int idx = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
		
%>
<tr height="25" align="center">
	<td>&nbsp;</td>
	<td><%=idx %></td>
	<td align="left">
	<a href="board/view.jsp?idx=<%=idx%>" onclick="window.open(this.href, '', 'width=470,height=600,scrolling=no, scrollbars=no'); return false;"><%=title %></td>
	<td align="center"><%=name %></td>
	<td class = "daya" align="center"><%=time %></td>
	<td align="center"><%=hit %></td>
	<td>&nbsp;</td>
	</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
}
%>
 		<tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 		</table>
 
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
  		<tr><td colspan="4" height="5"></td></tr>
  		<tr align="center">
   		<td><input type=button value="글쓰기" OnClick="onPopup()"></td>
  		</tr>
		</table>
      </div>
    </div>
  </div>
</div>

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
