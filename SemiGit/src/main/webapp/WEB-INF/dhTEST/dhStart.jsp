<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!doctype html>
<html lang="ko">



<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>결제 페이지</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    
    <!-- Font Awesome 5 Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
     <!-- Optional JavaScript -->
    <script src="../js/jquery-3.6.4.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.bundle.min.js" type="text/javascript"></script>
    
    <!--  css font -->
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
    
    <!-- slick 이용하기 위한 링크 -->
	<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
	
	
	
	
</head>


<style type="text/css"> 

	div.approval-container {
		border: solid 1px red;
		color: #666666;
	}
	
	p.approval-h3 {
		padding: 70px 0 0 0;
		font-weight: bold;
	}
	
	div.approval-line {
		margin: 20px 0;
		border: solid 1px #d9d9d9;
	}
	
	div.shippinginformation-input {
		height: 35px;
		
	}
	
	tbody.approval-tbody > tr > td > img {
		width: 100px;
		height: 100px;
	} 
		
	div.approval-sidebar {
		border: solid 1px blue;
		position: sticky;
		top: 18%;

		width: 300px;
		height: 100%;
		background-color: #f5f5f5;
		padding: 20px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		
	}
	
	 div.approval-sidebar-line{
		margin: 20px auto;
		border: solid 1px #d9d9d9;
		
	} 
	
	span.approval-price {
		text-align: right; 
		direction: rtl;
	}
	
	span.approval-won {
		padding: 5px 0 0 0;
	}
	
	a.approval-agreed {
		text-align: center; 
		width: 100%; 
		color: #666666;
	}
	input.approval-checkbox {
		
		width: 25px;
		height: 25px;
		position: relative;
		bottom: 10px;
		
	}
	
	div.approval-addpoint {
		border: solid 1px red; 
		margin-top: 10px; 
		border-radius: 8px; 
		width: 100%; 
		text-align: center; 
		padding: 20px;
	}
	
	span.approval-error {
		color: red;
		font-weight: bold;
	}
	
	/* 모달 스타일 */
	.approval-modal {
	  display: none; /* 모달 창은 처음에 안 보이도록 설정 */
	  position: fixed;
	  z-index: 1;
	  left: 0;
	  top: 0;
	  width: 100%;
	  height: 100%;
	  background-color: rgba(0, 0, 0, 0.4);
	}
	
	/* 모달 내용 스타일 */
	.approval-modal-content {
	  background-color: #fff;
	  margin: 5% auto;
	  padding: 20px;
	  border: 1px solid #888;
	  width: 80%;
	  display: block;
	}
	
	/* 모달 닫기 버튼 스타일 */
	.approval-modal-close {
	  color: #aaa;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}
	
	.approval-modal-close:hover,
	.approval-modal-close:focus {
	  color: #000;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	.card-body {
		height: 380px;
		overflow: scroll;
	}
	

	/* ///////////////////////header 부분 ///////////////////// */
	
   * {
   font-family: "Pretendard Variable", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
   word-break : break-all ;
   }
   img#banner{
      position: absolute;
      top: 0;
      left: 0;
      width:100%;
      height:100%;
   }
   div.banner{
      height : 80px ;
   }
   input#search-header{
      border : 1px solid #FFA751 ;
      display : inline-block ;
      width: 380px;
       height: 40px;
       border-radius: 6px;
       background: #fff;
   }
   ul#login_menu{
      position: absolute;
      top:10px ;
      right : 0 ;
   }
   div#header-search{
      height: 120px ; 
   }
   div#my_menu{
      position: absolute ;
      top: 55px;
       right: 0;
   }
   button.btn-search{
      background-color: #fff ;
      border: 0px ;
      top: 22%;
       right: 10px;
   }
   div.header-search {
      top: 60px;
      left : 370px ;
   }
   .header-link{
      color:#666;
   }
   a.header-a{
      display: inline-block;
      width: 100px ;
      margin-right : 80px ;
   }
   a.header-category{
      display:inline-block;
      width: 141px;
   }
   span.li-category{
      color: #666;
      margin-top:10px;
      margin-bottom:10px;
   }
   



	/* /////////////////////////footer 부분 ////////////////////////////////// */
	
	div.footerMenu > nav > a:first-child:after,
	div.footerMenu > nav > a:nth-child(2):after,
	div.footerMenu > nav > a:nth-child(3):after,
	div.footerMenu > nav > a:nth-child(4):after {
		content:"";
		border: solid 1px #ccc;
		width: 1px;
		height: 11px;
		margin-left: 33px;
	}
	
	
	div.footerMenu {
		/* border: solid 1px red; */
		background-color: #f8f8f8;
		height: 65px;
		/* padding-top: 20px; */
		width: 95%;	
		padding: 20px 0 0 250px;
	}
	
	div.footerMenu > nav {
		margin-left: 10%;
	}
	
	div.footerMenu > nav > a { 
		color: #7f7a76;
		/* border: solid 1px black; */
		margin-right: 3%;
	}
	
	div.footermyimg {
		margin: 50px 0 0 10%;
	}
	
	div.footerInfo {
		display: flex;	
	}
	
	div.footercompanyInfo {	
		/* border: solid 1px black; */
		width: 35%;
		margin: 30px;
	}
	div.footercompanyInfo > p {
		color: #7f7a76;
		font-size: 11pt;
	}
	
	div.footerclientService {
		margin: 30px;
		width: 35%;
	}
	
	div.footerclientService > a {
		border: solid 1px gray;
		color: #7f7a76;
		font-size: 11pt;
		padding: 5px;
		margin-right: 5px;
	}
	
	i.footer-i {
		font-size: 15pt;
		background-color: #9d9995;
		color: white;
		padding: 8px;
		border-radius: 50%;
		margin-right: 10px;
	}
	
	div.footericon {
		margin-top: 20px
	}
	
	div.footerbtm {
		text-align: center;
		margin: 20px auto;
		font-size: 11pt;
	}
	div.footerbtm > a {
		color: #7f7a76;
		margin-right: 2%;
	}
	
	div.footerclientService > a:hover, div#footerMenu > nav > a:hover
	,div.footerbtm > a:hover {
		text-decoration: none; 
	}

</style>

<script type="text/javascript">

$(document).ready(function(){
    
	setEventHandling();
	//setDatepicker();
	setModal();
});	// END OF $(DOCUMENT).READY(FUNCTION(){
	
function setEventHandling() {	
	
    
    // 헤더 카테고리 
     // 2차 카테고리 열리게
     $('.dropdown-menu li').mouseover(function(){
         $(this).find('.header-list').show();
     });

     // 2차 카테고리 닫히게
     $('.dropdown-menu li').mouseleave(function(){
         $(this).find('.header-list').hide();
     });
    
     // 이미지 슬라이드로 만들기 1
    $('.card-icon').slick({
          infinite: true,
          slidesToShow: 6,
          slidesToScroll: 6
     });
    
    // 이미지 슬라이드로 만들기 2
     $('.card-md').slick({
          dots: true,
          infinite: false,
          speed: 300,
          slidesToShow: 4,
          slidesToScroll: 4,
          responsive: [
            {
              breakpoint: 1024,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true,
                dots: true
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }

          ]
        });
     
    // 슬라이드 버튼 CSS 적용하기 1       
    $("button.slick-prev").html('<h4><</h4>');
    $("button.slick-prev").css('color','#666');
    $("button.slick-prev").eq(0).addClass("btn-first");
    $("button.slick-prev").eq(1).addClass("btn-second");      
    
    // 슬라이드 버튼 CSS 적용하기 2       
    $("button.slick-next").html('<h4>></h4>');
    $("button.slick-next").css('color','#666');
    $("button.slick-next").eq(0).addClass("btn-first");
    $("button.slick-next").eq(1).addClass("btn-second");
    
  
    
 }
 
	// 모달을 실행하는 함수이다.
	 function setModal() {
		  // 모달 버튼 클릭 이벤트
		  const modalButtons = $("[data-modal-target]");       // 모달 버튼 누를시 (어떤 것인지 설정 )

		  modalButtons.on("click", function () {				// 버튼을 클릭시 
		    const modalTarget = $(this).attr("data-modal-target");  // modalTarger 을 이벤트가 발생한 것의 data-modal-target 속성값 반환
		    const modal = $(modalTarget);								// modalTarget 변수에 저장된 문자열을 jQuery 객체로 변환
		    modal.show();												// 모달 보여주기

		    // 모달이 나타날 때 네비게이션 바를 가리지 않도록 z-index 조정
		    const navbar = $(".sticky-top");							// sticky-top  부분에 대하여 z-index 비교 하기 위해 z-index 클수록 위에 뜬다.
		    navbar.css("z-index", 0);
		    navbar.css("position", "static");
		    modal.css("z-index", 1);
		    
		  });

		  // 모달 닫기 버튼 클릭 이벤트
		  const closeButtons = $(".approval-modal-close");			 // 모달 버튼 누를시 (어떤 것인지 설정 )

		  closeButtons.on("click", function () {
		    const modal = $(this).closest(".approval-modal");     // approval-modal인 요소를 찾아 반환
		    modal.hide();

		    // 모달이 사라질 때 z-index 값을 초기값으로 되돌림
		    const navbar = $(".sticky-top");
		    navbar.css("z-index", 1);
		    navbar.css("position", "sticky");
		    navbar.css("background-color", "#fff");
		    
		    modal.css("z-index", 0);
		  });
		}

</script>

<body> 


	<!-- 맨 위에 있는 배너 모음 -->
   <div class="container-fluid">
      <div class="row justify-content-center banner">
         <div class="col-md-10" id="image-container"><img id="banner" src="../images/메인배너.png"/></div>
      </div>
   </div>
   
   <!-- 로고, 검색창, 로그인, 회원가입 -->
   <div class="container position-relative" id="header-search">
      <a class="position-absolute"style="top:20px;" href="#" ><img src="../images/오조닭조 이미지.png" /></a>
      
      <div class="position-absolute header-search" >
         <div class="position-relative">
            <input id="search-header" type="text" placeholder="오늘은 무슨 닭가슴살 먹지?"/>
            <button class="position-absolute btn-search"><i class="fa-solid fa-magnifying-glass"></i></button>
         </div>
      </div>
      
      <ul class="nav" id="login_menu" >
           <li class="nav-item border-right ">
             <a style="font-size:10pt;" class="nav-link active header-link" href="#">로그인</a>
           </li>
           <li class="nav-item border-right">
             <a style="font-size:10pt;" class="nav-link header-link" href="#">회원가입</a>
           </li>
           <li class="nav-item border-right">
             <a style="font-size:10pt;" class="nav-link header-link" href="#">주문조회</a>
           </li>
           <li class="nav-item">
             <a style="font-size:10pt;" class="nav-link header-link" href="#">고객센터</a>
           </li>
         </ul>
   
      <div id="my_menu">   
         <ul class="nav">
              <li class="nav-item">
                <a class="nav-link header-link" href="#"><i class="fa-solid fa-user fa-2x"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active header-link" href="#"><i class="fa-solid fa-cart-shopping fa-2x"  ></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link header-link" href="#"><i class="fa-solid fa-receipt fa-2x"></i></a>
              </li>
            </ul>   
      </div>   
   </div>
   
   <!-- nav bar ( 메뉴 바 ) -->

   <div class="container-fluid sticky-top" style="background-color : #fff; ">
      <div class="container">
      <nav>        <!-- style="border: solid 1px blue; margin: 0 100px; max-width: 1300px; min-width: 120px; -->        
           <!-- Links -->
              <ul style="border-bottom: solid 1px #f2f2f2; display:flex; list-style: none; padding-left:0;">
            
                <!-- Dropdown -->
               <!-- margin 상 우 좌 하 -->
                <li style="margin: 10px 50px 10px 10px;">
                     <a class="header-category border-right" href="#" data-toggle="dropdown" style="color: black;">
                       <i class="fa-solid fa-bars"></i>
                          카테고리
                     </a>
                  
                  <div class="dropdown-menu" aria-labelledby="navbardrop">
                    <ul style="padding: 0; list-style: none;">
                       
                       <li>
                          <a id="ChickenBreast" class="dropdown-item" href="#">
                             <i class="fa-solid fa-drumstick-bite" style="margin-right:10px;"></i>
                             닭가슴살
                          </a>
                          <div class="header-list" style="border: solid 2px white;" id="show1">
                             <ul style="list-style: none; overflow-y: auto; overflow-x: hidden; position: absolute; top: 0; left: 100%; z-index: 2; width: 160px; height: 100%; background: #f4f4f4; border: 1px solid #ccc; border-top: 0; border-left: 0; padding-top: 5px;">
                                   <li><a href="#"><span class="li-category">전체</span></a></li>
                                   <li><a href="#"><span class="li-category">스테이크</span></a></li>
                                   <li><a href="#"><span class="li-category">소스닭가슴살</span></a></li>
                                   <li><a href="#"><span class="li-category">스팀-소프트</span></a></li>
                                   <li><a href="#"><span class="li-category">볼-큐브</span></a></li>
                                   <li><a href="#"><span class="li-category">슬라이스</span></a></li>
                             </ul>
                          </div>
                       </li>
                       
                       <li>
                          <a id="Instant" class="dropdown-item" href="#">
                             <i class="fa-solid fa-bowl-rice" style="margin-right:10px;"></i>
                             즉석 간편식
                          </a>
                          <div class="header-list" style="border: solid 2px white;" id="show2">
                          <ul  style="list-style: none; overflow-y: auto; overflow-x: hidden; position: absolute; top: 0; left: 100%; z-index: 2; width: 160px; height: 100%; background: #f4f4f4; border: 1px solid #ccc; border-top: 0; border-left: 0; padding-top: 5px;">
                                   <li><a href="#"><span class="li-category">전체</span></a></li>
                               <li><a href="#"><span class="li-category">브리또</span></a></li>
                               <li><a href="#"><span class="li-category">핫도그</span></a></li>
                               <li><a href="#"><span class="li-category">만두-딤섬</span></a></li>
                               <li><a href="#"><span class="li-category">분식</span></a></li>
                               <li><a href="#"><span class="li-category">치킨</span></a></li>
                               <li><a href="#"><span class="li-category">피자</span></a></li>
                         </ul>
                         </div>            
                       </li>
                       
                       <li>
                          <a id="BoxLunch" class="dropdown-item" href="#">
                             <i class="fa-solid fa-bowl-food" style="margin-right:10px;"></i>
                             도시락, 볶음밥
                          </a>
                          <div class="header-list" style="border: solid 2px white;" id="show3">
                             <ul  style="list-style: none; overflow-y: auto; overflow-x: hidden; position: absolute; top: 0; left: 100%; z-index: 2; width: 160px; height: 100%; background: #f4f4f4; border: 1px solid #ccc; border-top: 0; border-left: 0; padding-top: 5px;">
                                   <li><a href="#"><span class="li-category">전체</span></a></li>
                               <li><a href="#"><span class="li-category">다이어트 도시락</span></a></li>
                               <li><a href="#"><span class="li-category">더담은 도시락</span></a></li>
                               <li><a href="#"><span class="li-category">간편 도시락</span></a></li>
                               <li><a href="#"><span class="li-category">볶음밥</span></a></li>
                               <li><a href="#"><span class="li-category">덮밥-컵밥</span></a></li>
                            </ul>
                         </div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="Beef" class="dropdown-item" href="#">
                             <i class="fa-solid fa-cow" style="margin-right:10px;"></i>
                             소고기
                          </a>
                          <div style="border: solid 2px white;" id="show4"></div>               
                       </li>
                       
                       <li style="list-style: none;">
                          <a id="Pig" class="dropdown-item" href="#">
                             <i class="fa-solid fa-bacon" style="margin-right:10px;"></i>
                             돼지, 오리고기
                          </a>
                          <div style="border: solid 2px white;" id="show5"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="ChickenTenderloin" class="dropdown-item" href="#">
                             <i class="fa-solid fa-utensils" style="margin-right:10px;"></i>
                             닭안심살
                          </a>
                          <div style="border: solid 2px white;" id="show6"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="Salad" class="dropdown-item" href="#">
                             <i class="fa-solid fa-apple-whole" style="margin-right:10px;"></i>
                             샐러드, 과일
                          </a>
                          <div style="border: solid 2px white;" id="show7"></div>               
                       </li>                    
                       
                       <li style="list-style: none;">
                          <a id="Cheese" class="dropdown-item" href="#">
                             <i class="fa-solid fa-cheese" style="margin-right:10px;"></i>
                             배이커리, 치즈
                          </a>
                          <div style="border: solid 2px white;" id="show8"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="Snacks" class="dropdown-item" href="#">
                             <i class="fa-solid fa-hotdog" style="margin-right:10px;"></i>
                             과자, 간식, 떡
                          </a>
                          <div style="border: solid 2px white;" id="show9"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="Beverage" class="dropdown-item" href="#">
                             <i class="fa-solid fa-mug-hot" style="margin-right:10px;"></i>
                             음료, 차, 프로틴
                          </a>
                          <div style="border: solid 2px white;" id="show10"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="HealthyFood" class="dropdown-item" href="#">
                             <i class="fa-solid fa-thumbs-up" style="margin-right:10px;"></i>
                             건강식품
                          </a>
                          <div style="border: solid 2px white;" id="show11"></div>               
                       </li>   
                       
                       <li style="list-style: none;">
                          <a id="sportingGoods" class="dropdown-item" href="#">
                             <i class="fa-solid fa-futbol" style="margin-right:10px;"></i>
                             운동생활용품
                          </a>
                          <div style="border: solid 2px white;" id="show12"></div>               
                       </li>   
                    </ul>
                  </div>
                </li>
             
                <li style="margin: 10px 130px 10px 10px;">
                  <a class="header-category" href="#" style="color: black;">랭킹</a>
                </li>
                <li style="margin: 10px 130px 10px 10px;">
                  <a class="header-category" href="#" style="color: black;">신제품</a>
                </li>
                <li style="margin: 10px 130px 10px 10px;">
                  <a class="header-category" href="#" style="color: black;">특가/혜택</a>
                </li>
                <li style="margin: 10px 130px 10px 10px;">
                  <a class="header-category" href="#" style="color: black;">MD추천</a>
                </li>
<!--                 <li style="margin: 10px 130px 10px 10px;">
                  <a class="header-category" href="#" style="color: black;">이벤트</a>
                </li> -->
           </ul>
      </nav>
   </div>
   </div>



	<!--  -----------------------내용 부분--------------------------------  -->
	
	
	<div class="approval-container container" style="display: flex; margin-bottom: 5%;">
		<div class="col-9">
			<p class="approval-h3 h1" style="font-family: Pretendard;">결재/정보</p>
			
			
			<div style="border: solid 1px #666666;  margin: 20px 0;"></div>
			
			
			<p class="h5">주문자 정보</p> 
			
			
			<div>   										<!-- approval-userInfo 부분 -->
				<span class="h5">이름 - 전화번호 - 이메일</span> 
				<span class="h5" style="margin-left: 30px;">주문자 정보를 나타낼 span 태그</span>
			</div>
		
			<div class="approval-line"></div>
			
			<form name="shippingInformation">
			
				<div>
					<span class="h5" style="margin-right: 5%;">배송지 정보</span>
					<input type="checkbox" id="approval-check" />
					<label for="approval-check">주문자 정보와 동일</label>
				</div>
				
				<table>						<!--  이부분은 수업 에서 썼던 것을 가져왔다. -->
				
					<tbody>
					     <tr>
				            <td style="width: 20%; font-weight: bold;">성명&nbsp;<span class="star">*</span></td>
				            <td style="width: 80%; text-align: left;">
				               <input type="text" name="name" id="name" class="requiredInfo"> 
				               <span class="approval-error">성명은 필수입력 사항입니다.</span>
				            </td>
				         </tr>
				         
				         <tr>
					         <td style="width: 20%; font-weight: bold;">우편번호</td>
					         <td style="width: 80%; text-align: left;">
					            <input type="text" id="postcode" name="postcode" size="6" maxlength="5" />&nbsp;&nbsp;
					            <!-- 우편번호 찾기 -->
					            <img id="zipcodeSearch" src="../images/b_zipcode.gif" style="vertical-align: middle;" />
					            <span class="approval-error">우편번호 형식이 아닙니다.</span>
					         </td>
					      </tr>
					      
					      <tr>
					         <td style="width: 20%; font-weight: bold; padding-bottom: 58px;">주소</td>
					         <td style="width: 80%; text-align: left;">
					            <input type="text" id="address" name="address" size="40" placeholder="주소" style="width: 70%;"/><br/>
					            <input type="text" id="detailAddress" name="detailAddress" size="40" placeholder="상세주소" style="width: 70%;"/>&nbsp;<input type="text" id="extraAddress" name="extraAddress" size="40" placeholder="참고항목" style="width: 70%;"/> 
					            <span class="approval-error">주소를 입력하세요</span>
					         </td>
					      </tr>
					      
					      <tr>
					         <td style="width: 20%; font-weight: bold;">연락처</td>
					         <td style="width: 80%; text-align: left;">
					             <input type="text" id="hp1" name="hp1" size="6" maxlength="3" value="010" readonly />&nbsp;-&nbsp;   <!-- readonly 는 변경할 수 없게 한다. -->
					             <input type="text" id="hp2" name="hp2" size="6" maxlength="4" />&nbsp;-&nbsp;
					             <input type="text" id="hp3" name="hp3" size="6" maxlength="4" />
					             <span class="approval-error">휴대폰 형식이 아닙니다.</span>
					         </td>
					      </tr>
				         
				         
				         
				    </tbody>
				
				
				
				</table>
				
			
			
				<div class="approval-line"></div>
				
				
				<p class="h5">주문 상품</p>
				
				
				
				<table class="table">
				  <thead class="thead-light">  <!-- 테이블의 제목 부분만 밝은 색으로 변경한다. -->
				    <!-- <thead style="background-color: blue;"> -->  <!-- 테이블 제목 부분을 파란색ㄱ으로 css 사용 -->
				    <tr>
				      <th>NO</th>
				      <th>상품이미지</th>
				      <th>상품명</th>
				      <th>가격</th>
				    </tr>
				  </thead>
				  <tbody class="approval-tbody">
				    <tr>
				      <th>1</th>
				      <td><img src="../images/logo.png"></td>
				      <td>잇메이트 소고기볼 오리지널 100g</td>
				      <td>10,000원</td>
				    </tr>
				    <tr>
				      <th>2</th>
				      <td><img src="../images/Chicken.png"></td>
				      <td>간편하고 든든한, 현미밥</td>
				      <td>5,000원</td>
				    </tr>
				    <tr>
				      <th>3</th>
				      <td><img src="../images/Shipping.png"></td>
				      <td>닭가슴살 몬스터 볶음밥 이지쿡</td>
				      <td>32,000원</td>
				    </tr>
				  </tbody>
				</table>
				
				
				<div class="shippingInformation">
					<div class="shippingInformation-input">
						
						<label for="select">배송시 요청사항</label>
						<select name="shipping" id="select" style="margin-left: 20px; width:50%;">							<!-- 이부분은 label for 때문에 id 로 가져옴   -->
						  <option value="" disabled selected>배송 요청사항 없음</option>
						  <option value="approval-option1">배송 전에 미리 연락 바랍니다.</option>
						  <option value="approval-option2">부재시 경비실에 맡겨 주세요</option>
						  <option value="approval-option3">부재시 전화 주시거나 문자 남겨 주세요</option>
						  <option value="approval-option4">안전운전하시고 빠른 배송 부탁 드립니다. 감사합니다.</option>
	
						</select>
						
						
					</div>
				</div>
				
				
				<div class="approval-line"></div>
				
				
				<p class="h5">포인트</p>
				
				
				<div class="approval-point">
					
					<span>포인트 사용</span>
					<input type="text" placeholder="포인트 사용을 위해 입력해주세요" value="0" class="ml-5">
					<span style="margin-left: 10px;">현재 잔여 포인트</span>
					<span>~~잔여 포인트를 나타낼 span 태그</span>
				</div>
	
				
				<div class="approval-line"></div>
				
				<span class="h5">결재하기</span>
			
				<button type="button" class="btn btn-primary btn-lg ml-5" onclick="">신용카드</button>				<!-- 버튼을 누를시 팝업창을 띄워서 내가 가지고 있는 쿠폰을 보여줄것   -->
				<button type="button" class="btn btn-secondary btn-lg ml-5" onclick="">취소하기</button>				<!-- 버튼을 누를시 메인 페이지로 돌아가자  -->
				<span> 결재하기 누르기전 약관에 동의해주세요</span>
				
			</form>
		</div>
			
			
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 사이드 바 시작 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->	
			
		<div class="col-3 approval-sidebar container" style="border: solid 1px green;">				<!--  사이드 바 입니다. -->
			<div class="row">
				
		
				<p class="h4 col-12" style="margin: 20px auto;">주문결제 금액</p>
				
				<span class="col-4">상품금액</span>
				<span class="h4 col-7 approval-price">45,661,110</span>     			<!-- 가격부분을 받아오자   -->
				<span class="col-1 approval-won">원</span>
				
				<div class="approval-sidebar-line col-sm-10 offset-sm-1"></div>
			
				<span class="col-4">할인금액</span>
				<span class="h4 col-7 approval-price">0</span>      			<!-- 가격부분을 받아오자   -->
				<span class="col-1 approval-won">원</span>
			
				<span class="col-4 mt-3">배송비</span>
				<span class="h4 col-7 mt-3 approval-price">451,154</span>      			<!-- 가격부분을 받아오자   -->
				<span class="col-1 mt-3 approval-won">원</span>
				
				<div class="col-sm-10 offset-sm-1" style="border: solid 1px #666666; margin: 20px auto;"></div>
				
				<span class="col-4">총 결재금액</span>
				<span class="h4 col-7" style="text-align: right; direction: rtl; color: #FF7E32 ">4,484,615</span>     			<!-- 가격부분을 받아오자   -->
				<span class="col-1 approval-won">원</span>
			
										
				<div class="approval-addpoint">
				  <span class="col-7">적립예정 포인트</span>
				  <span class="col-4 approval-price" style="font-weight: bold;" > 200</span>			<!--  포인트 계산되어 받아올 곳  -->
				  <span class="col-1" style="padding: 0;">p</span>
				 
				</div>				
				
				
				
				<div class="approval-sidebar-line col-sm-10 offset-sm-1"></div>
				
				<!-- <a href="#" onclick="window.open('provision1.html', 'popupWindow', 'left=500px, top=50px, width=600,height=600');" class = "approval-agreed">
				    <span>처리위탁 및 3자 제공 동의</span>
				    <span>내용보기<i class="ico-arrfill-right"></i></span>
				</a> 
				
				<a href="#" onclick="window.open('provision2.html', 'popupWindow', 'left=500px, top=50px, width=600,height=600');" class = "approval-agreed">
				    <span>결제대행서비스 이용 동의</span>
				    <span>내용보기<i class="ico-arrfill-right"></i></span>
				</a>
				
				<a href="#" onclick="window.open('provision3.html', 'popupWindow', 'left=500px, top=50px, width=600,height=600');" class = "approval-agreed">
				    <span>개인정보 수집 및 이용 동의</span>
				    <span>내용보기<i class="ico-arrfill-right"></i></span>
				</a>
				
				
				-->
				
				
				<!-- 모달 버튼 -->
				<a href="#" class="approval-agreed" data-modal-target="#provision1-modal">
				  <span>처리위탁 및 3자 제공 동의</span>
				  <span>내용보기</span>
				</a>
				
				<!-- 모달 창 -->
				<div id="provision1-modal" class="modal approval-modal">
				  <div class="modal-content approval-modal-content">
				    <span class="approval-modal-close">&times;</span>    <!--  &times; 는 X 표 -->
				    <h2>처리위탁 및 3자 제공 동의</h2>
				    
				    
				    <div class="container" style="border: solid 1px red">
					<div class="row">

						<div style="border: solid 1px #666666;"></div>
						
						
						
						<div class="accordion col-12" id="accordionExample">		<!-- 아이디 값이 중요하다. -->
						   <div class="card">
						      <div class="card-header" id="headingOne">
						        <h2 class="mb-0">
						          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						            개인정보 제 3자 제공 동의
						          </button>
						        </h2>
						      </div>
						
						      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						         <!-- .collapse show 는 맨 처음에는  내용물을 보여주도록 하는 것임. -->
						         <div class="card-body">
						           <div class="accordion-con" style="display: block;">[개인정보 제3자 제공]<br>
										<br>
										가. 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>
										<br>
										① 이용자들이 사전에 동의한 경우<br>
										<br>
										② 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독당국의 요구가 있는 경우<br>
										<br>
										나. 회사가 제공하는 서비스를 통하여 주문 및 결제가 이루어진 경우 상담 등 거래 당사자간 원활한 의사소통 및 배송 등 거래이행을 위하여 관련된 정보를 필요한 범위 내에서 거래 당사자에게 제공합니다.<br>
										<br>
										다. 그 밖에 개인정보 제3자 제공이 필요한 경우에는 이용자의 동의를 얻는 등 합당한 절차를 통하여 제3자에게 개인정보를 제공할 수 있습니다.<br>
										<br>
										라. 회사는 이용자들의 거래의 이행을 위하여 아래와 같이 개인정보를 공유할 수 있습니다.<br>
										<br>
										공유받는 자 : 입점업체 <a href="javascript:void(0);" onclick="gfn_storeCompanyPop();">[전체보기]</a><br>
										<br>
										공유하는 항목 :<br>
										<br>
										1) 구매자정보(구매자id, 구매자명, 구매자주소, 구매자전화번호, 구매자휴대전화번호)<br>
										<br>
										2) 상품 구매, 취소, 반품, 교환정보<br>
										<br>
										3) 수령인정보(수령인명, 휴대폰번호, 전화번호, 수령인주소)<br>
										<br>
										4) 송장정보<br>
										<br>
										공유받는자의 이용목적 :<br>
										<br>
										상품(서비스) 배송(전송), 반품, 교환, 환불, 고객상담 등 정보통신서비스제공계약 및 전자상거래(통신판매) 계약의 이행을 위해 필요한 업무의 처리<br>
										<br>
										보유 및 이용기간 :<br>
										<br>
										서비스 제공기간 (관계법령의 규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유 기간)<br>
										<br>
										[수집한 개인정보의 위탁]<br>
										<br>
										가. 회사는 원활한 서비스를 위해여 개인정보 취급을 타인에게 위탁할 수 있습니다.<br>
										<br>
										나. 회사는 서비스 이행을 위해 아래와 같이 외부 전문업체에 위탁하여 운영하고 있습니다.<br>
										<br>
										다. 회사의 이용자의 개인정보 위탁 처리 시 수탁업체 및 위탁 목적은 아래와 같습니다.<br>
										<br>
										① 수탁업체 : 토스페이먼츠 주식회사, LG CNS, (주)케이지이니시스, NHN한국사이버결제 주식회사, NICE페이먼츠 주식회사, 엔에치엔페이코㈜, ㈜비바리퍼블리카, 주식회사 카카오페이<br>
										<br>
										위탁업무 내용 :　신용카드/계좌이체/가상계좌/무통장 결제처리, 에스크로, 현금영수증<br>
										<br>
										② 수탁업체 : 배송업체 <a href="javascript:void(0);" onclick="gfn_deliveryCompanyPop();">[전체보기]</a><br>
										<br>
										위탁업무 내용 : 상품(서비스) 배송(전송), 반품교환수거 서비스<br>
										<br>
										③ 수탁업체 : (주)다날, 페이레터(주)<br>
										<br>
										위탁업무 내용 :　휴대폰 결제 처리</div>
						         </div>
						      </div>
						   </div>
						   
						   <div class="card">
						      <div class="card-header" id="headingThree">
						        <h2 class="mb-0">
						          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						            처리위탁 제공 동의
						          </button>
						        </h2>
						      </div>
						      
						      <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						         <div class="card-body">
						            <div class="accordion-con" style="display: block;">[개인정보 제3자 제공]<br>
										<br>
										가. 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>
										<br>
										① 이용자들이 사전에 동의한 경우<br>
										<br>
										② 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독당국의 요구가 있는 경우<br>
										<br>
										나. 회사가 제공하는 서비스를 통하여 주문 및 결제가 이루어진 경우 상담 등 거래 당사자간 원활한 의사소통 및 배송 등 거래이행을 위하여 관련된 정보를 필요한 범위 내에서 거래 당사자에게 제공합니다.<br>
										<br>
										다. 그 밖에 개인정보 제3자 제공이 필요한 경우에는 이용자의 동의를 얻는 등 합당한 절차를 통하여 제3자에게 개인정보를 제공할 수 있습니다.<br>
										<br>
										라. 회사는 이용자들의 거래의 이행을 위하여 아래와 같이 개인정보를 공유할 수 있습니다.<br>
										<br>
										공유받는 자 : 입점업체 <a href="javascript:void(0);" onclick="gfn_storeCompanyPop();">[전체보기]</a><br>
										<br>
										공유하는 항목 :<br>
										<br>
										1) 구매자정보(구매자id, 구매자명, 구매자주소, 구매자전화번호, 구매자휴대전화번호)<br>
										<br>
										2) 상품 구매, 취소, 반품, 교환정보<br>
										<br>
										3) 수령인정보(수령인명, 휴대폰번호, 전화번호, 수령인주소)<br>
										<br>
										4) 송장정보<br>
										<br>
										공유받는자의 이용목적 :<br>
										<br>
										상품(서비스) 배송(전송), 반품, 교환, 환불, 고객상담 등 정보통신서비스제공계약 및 전자상거래(통신판매) 계약의 이행을 위해 필요한 업무의 처리<br>
										<br>
										보유 및 이용기간 :<br>
										<br>
										서비스 제공기간 (관계법령의 규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유 기간)<br>
										<br>
										[수집한 개인정보의 위탁]<br>
										<br>
										가. 회사는 원활한 서비스를 위해여 개인정보 취급을 타인에게 위탁할 수 있습니다.<br>
										<br>
										나. 회사는 서비스 이행을 위해 아래와 같이 외부 전문업체에 위탁하여 운영하고 있습니다.<br>
										<br>
										다. 회사의 이용자의 개인정보 위탁 처리 시 수탁업체 및 위탁 목적은 아래와 같습니다.<br>
										<br>
										① 수탁업체 : 토스페이먼츠 주식회사, LG CNS, (주)케이지이니시스, NHN한국사이버결제 주식회사, NICE페이먼츠 주식회사, 엔에치엔페이코㈜, ㈜비바리퍼블리카, 주식회사 카카오페이<br>
										<br>
										위탁업무 내용 :　신용카드/계좌이체/가상계좌/무통장 결제처리, 에스크로, 현금영수증<br>
										<br>
										② 수탁업체 : 배송업체 <a href="javascript:void(0);" onclick="gfn_deliveryCompanyPop();">[전체보기]</a><br>
										<br>
										위탁업무 내용 : 상품(서비스) 배송(전송), 반품교환수거 서비스<br>
										<br>
										③ 수탁업체 : (주)다날, 페이레터(주)<br>
										<br>
										위탁업무 내용 :　휴대폰 결제 처리<br>
										<br>
										​​​​​​</div>
							         </div>
							      </div>
							   </div>
							</div>
						</div>
					</div>
				    
				    
				  </div>
				</div>
				
				
				<!-- 모달 버튼 -->
				<a href="#" class="approval-agreed" data-modal-target="#provision2-modal">
				  <span>결제대행서비스 이용 동의</span>
				  <span>내용보기</span>
				</a>
				
				<!-- 모달 창 -->
				<div id="provision2-modal" class="modal approval-modal">
				  <div class="modal-content approval-modal-content">
				    <span class="approval-modal-close">&times;</span>    <!--  &times; 는 X 표 -->
				    <h2>결제대행서비스 이용 동의</h2>
				    
				    
				    <div class="container" style="border: solid 1px red">
					<div class="row">
						
						<div style="border: solid 1px #666666;"></div>
						
						
						<div class="accordion col-12" id="accordionExample">		<!-- 아이디 값이 중요하다. -->
						   <div class="card">
						      <div class="card-header" id="headingOne">
						        <h2 class="mb-0">
						          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						            전자금융거래 기본약관
						          </button>
						        </h2>
						      </div>
						
						      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						         <!-- .collapse show 는 맨 처음에는  내용물을 보여주도록 하는 것임. -->
						         <div class="card-body">
						           <div class="accordion-con" style="display: block;">
						                제1조 (목적)<br>
										이 약관은 NICE페이먼츠 주식회사, 토스페이먼츠 주식회사, NHN한국사이버결제 주식회사, (주)다날 (이하 '회사'라 합니다)가 제공하는 전자지급결제대행서비스 및 결제대금예치서비스를 이용자가 이용함에 있어 회사와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함을 목적으로 합니다.<br>
										<br>
										제2조 (용어의 정의)<br>
										이 약관에서 정하는 용어의 정의는 다음과 같습니다.<br>
										1. '전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및 결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.<br>
										2. '전자지급결제대행서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.<br>
										3. '결제대금예치서비스'라 함은 이용자가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 전부 또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, 회사가 이용자의 물품수령 또는 서비스 이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다.<br>
										4. '이용자'라 함은 이 약관에 동의하고 회사가 제공하는 전자금융거래 서비스를 이용하는 자를 말합니다.<br>
										5. '접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, 회사에 등록된 이용자번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다.<br>
										6. '거래지시'라 함은 이용자가 본 약관에 의하여 체결되는 전자금융거래계약에 따라 회사에 대하여 전자금융거래의 처리를 지시하는 것을 말합니다.<br>
										7. '오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.<br>
										<br>
										제3조 (약관의 명시 및 변경)<br>
										1. 회사는 이용자가 전자금융거래 서비스를 이용하기 전에 이 약관을 게시하고 이용자가 이 약관의 중요한 내용을 확인할 수 있도록 합니다.<br>
										2. 회사는 이용자의 요청이 있는 경우 전자문서의 전송방식에 의하여 본 약관의 사본을 이용자에게 교부합니다.<br>
										3. 회사가 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 회사가 제공하는 전자금융거래 서비스 이용 초기화면 및 회사의 홈페이지에 게시함으로써 이용자에게 공지합니다.<br>
										4. 회사는 제3항의 공지를 할 경우 "이용자가 변경에 따라 변경에 동의하지 아니한 경우 공지 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 해지의사표시를 하지 아니한 경우 동의한 것으로 본다."라는 내용을 통지합니다.<br>
										<br>
										제4조 (전자지급결제대행서비스의 종류)<br>
										회사가 제공하는 전자지급결제대행서비스는 지급결제수단에 따라 다음과 같이 구별됩니다.<br>
										1. 신용카드결제대행서비스: 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드인 경우로서, 회사가 전자결제시스템을 통하여 신용카드 지불정보를 송, 수신하고 결제대금의 정산을 대행하거나 매개하는 서비스를 말합니다.<br>
										2. 계좌이체대행서비스: 이용자가 결제대금을 회사의 전자결제시스템을 통하여 금융기관에 등록한 자신의 계좌에서 출금하여 원하는 계좌로 이체할 수 있는 실시간 송금 서비스를 말합니다.<br>
										3. 가상계좌서비스: 이용자가 결제대금을 현금으로 결제하고자 경우 회사의 전자결제시스템을 통하여 자동으로 이용자만의 고유한 일회용 계좌의 발급을 통하여 결제대금의 지급이 이루어지는 서비스를 말합니다.<br>
										4. 기타: 회사가 제공하는 서비스로서 지급결제수단의 종류에 따라 '휴대폰 결제대행서비스', '상품권결제대행서비스', 등이 있습니다.<br>
										<br>
										제5조 (결제대금예치서비스의 내용)<br>
										1. 이용자(이용자의 동의가 있는 경우에는 재화 등을 공급받을 자를 포함합니다. 이하 본 조에서 같습니다)는 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.<br>
										2. 회사는 이용자로부터 재화 등을 공급받은 사실을 통보 받은 후 회사와 통신판매업자간 사이에서 정한 기일 내에 통신판매업자에게 결제대금을 지급합니다.<br>
										3. 회사는 이용자가 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에는 이용자의 동의 없이 통신판매업자에게 결제대금을 지급할 수 있습니다.<br>
										4. 회사는 통신판매업자에게 결제대금을 지급하기 전에 이용자에게 결제대금을 환급 받을 사유가 발생한 경우에는 그 결제대금을 소비자에게 환급합니다.<br>
										5. 회사는 이용자와의 결제대금예치서비스 이용과 관련된 구체적인 권리, 의무를 정하기 위하여 본 약관과는 별도로 결제대금예치서비스이용약관을 제정할 수 있습니다.<br>
										<br>
										제6조 (이용시간)<br>
										1. 회사는 이용자에게 연중무휴 1일 24시간 전자금융거래 서비스를 제공함을 원칙으로 합니다. 단, 금융기관 기타 결제수단 발행업자의 사정에 따라 달리 정할 수 있습니다.<br>
										2. 회사는 정보통신설비의 보수, 점검 기타 기술상의 필요나 금융기관 기타 결제수단 발행업자의 사정에 의하여 서비스 중단이 불가피한 경우, 서비스 중단 3일 전까지 게시 가능한 전자적 수단을 통하여 서비스 중단 사실을 게시한 후 서비스를 일시 중단할 수 있습니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 불가피한 경우에는 사전 게시 없이 서비스를 중단할 수 있습니다.<br>
										<br>
										제7조 (접근매체의 선정과 사용 및 관리)<br>
										1. 회사는 전자금융거래 서비스 제공 시 접근매체를 선정하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인할 수 있습니다.<br>
										2. 이용자는 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없습니다.<br>
										3. 이용자는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.<br>
										4. 회사는 이용자로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 이용자에게 발생한 손해를 배상할 책임이 있습니다.<br>
										<br>
										제8조 (거래내용의 확인)<br>
										1. 회사는 이용자와 미리 약정한 전자적 방법을 통하여 이용자의 거래내용(이용자의 '오류정정 요구사실 및 처리결과에 관한 사항'을 포함합니다)을 확인할 수 있도록 하며, 이용자의 요청이 있는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송 등의 방법으로 거래내용에 관한 서면을 교부합니다.<br>
										2. 회사가 이용자에게 제공하는 거래내용 중 거래계좌의 명칭 또는 번호, 거래의 종류 및 금액, 거래상대방을 나타내는 정보, 거래일자, 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보와 해당 전자금융거래와 관련한 전자적 장치의 접속기록은 5년간, 건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록, 전자지급수단 이용 시 거래승인에 관한 기록, 이용자의 오류정정 요구사실 및 처리결과에 관한 사항은 1년간의 기간을 대상으로 하되, 회사가 전자지급결제대행 서비스 제공의 대가로 수취한 수수료에 관한 사항은 제공하는 거래내용에서 제외됩니다.<br>
										3. 이용자가 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다.<br>
										주소: 서울시 마포구 아현동 686 크레디트센터 8층<br>
										이메일 주소: nicepay@nicepay.co.kr<br>
										전화번호: 1661-0808 / 1661-7335<br>
										FAX: 02-312-3591<br>
										<br>
										제9조 (오류의 정정 등)<br>
										1. 이용자는 전자금융거래 서비스를 이용함에 있어 오류가 있음을 안 때에는 회사에 대하여 그 정정을 요구할 수 있습니다.<br>
										2. 회사는 전항의 규정에 따른 오류의 정정요구를 받은 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날부터 2주 이내에 그 결과를 이용자에게 알려 드립니다.<br>
										<br>
										제10조 (회사의 책임)<br>
										1. 접근매체의 위조나 변조로 발생한 사고로 인하여 이용자에게 발생한 손해에 대하여 배상책임이 있습니다. 다만 이용자가 제7조 제2항에 위반하거나 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 알 수 있었음에도 불구하고 이용자가 자신의 접근매체를 누설 또는 노출하거나 방치한 경우 그 책임의 전부 또는 일부를 이용자가 부담하게 할 수 있습니다.<br>
										2. 회사는 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할 책임이 있습니다. 다만 본 조 제1항 단서에 해당하거나 법인('중소기업기본법' 제2조 제2항에 의한 소기업을 제외합니다)인 이용자에게 손해가 발생한 경우로서 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우 그 책임의 전부 또는 일부를 이용자가 부담하게 할 수 있습니다.<br>
										3. 회사는 이용자로부터의 거래지시가 있음에도 불구하고 천재지변, 회사의 귀책사유가 없는 정전, 화재, 통신장애 기타의 불가항력적인 사유로 처리 불가능하거나 지연된 경우로서 이용자에게 처리 불가능 또는 지연사유를 통지한 경우(금융기관 또는 결제수단 발행업체나 통신판매업자가 통지한 경우를 포함합니다)에는 이용자에 대하여 이로 인한 책임을 지지 아니합니다.<br>
										4. 회사는 전자금융거래를 위한 전자적 장치 또는 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 제2조제1항제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할 책임이 있습니다.<br>
										<br>
										제11조 (전자지급거래계약의 효력)<br>
										1. 회사는 이용자의 거래지시가 전자지급거래에 관한 경우 그 지급절차를 대행하며, 전자지급거래에 관한 거래지시의 내용을 전송하여 지급이 이루어지도록 합니다.<br>
										2. 회사는 이용자의 전자지급거래에 관한 거래지시에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.<br>
										<br>
										제12조 (거래지시의 철회)<br>
										1. 이용자는 전자지급거래에 관한 거래지시의 경우 지급의 효력이 발생하기 전까지 거래지시를 철회할 수 있습니다.<br>
										2. 전항의 지급의 효력이 발생 시점이란 (i) 전자자금이체의 경우에는 거래 지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관의 계좌 원장에 입금기록이 끝난 때 (ii) 그 밖의 전자지급수단으로 지급하는 경우에는 거래 지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융기관의 전자적 장치에 입력이 끝난 때를 말합니다.<br>
										3. 이용자는 지급의 효력이 발생한 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법 또는 본 약관 제5조에서 정한 바에 따라 결제대금을 반환 받을 수 있습니다.<br>
										<br>
										제13조 (전자지급결제대행 서비스 이용 기록의 생성 및 보존)<br>
										1. 회사는 이용자가 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.<br>
										2. 전항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제8조 제2항에서 정한 바에 따릅니다.<br>
										<br>
										제14조 (전자금융거래정보의 제공금지)<br>
										회사는 전자금융거래 서비스를 제공함에 있어서 취득한 이용자의 인적 사항, 이용자의 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 이용자의 동의를 얻지 아니하고 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 아니합니다.<br>
										<br>
										제15조 (분쟁처리 및 분쟁조정)<br>
										1. 이용자는 다음의 분쟁처리 책임자 및 담당자에 대하여 전자금융거래 서비스 이용과 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.<br>
										담당자: 양다우<br>
										연락처(전화번호, 전자우편주소): 02-1661-0808(1661-7335) / nicepay@nicepay.co.kr<br>
										2. 이용자가 회사에 대하여 분쟁처리를 신청한 경우에는 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 이용자에게 안내합니다.<br>
										3. 이용자는 '금융감독기구의 설치 등에 관한 법률' 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 '소비자보호법' 제31조 제1항의 규정에 따른 소비자보호원에 회사의 전자금융거래 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.<br>
										<br>
										제16조 (회사의 안정성 확보 의무)<br>
										회사는 전자금융거래의 안전성과 신뢰성을 확보할 수 있도록 전자금융거래의 종류별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술부문 및 전자금융업무에 관하여 금융감독위원회가 정하는 기준을 준수합니다.<br>
										<br>
										제17조 (약관 외 준칙 및 관할)<br>
										1. 이 약관에서 정하지 아니한 사항에 대하여는 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률, 통신판매에 관한 법률, 여신전문금융업법 등 소비자보호 관련 법령에서 정한 바에 따릅니다.<br>
										2. 회사와 이용자간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.
									</div>
						      </div>
						   </div>
						   
						    <div class="card">
							      <div class="card-header" id="headingTwo">
							        <h2 class="mb-0">
							          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							            개인정보 수집 및 이용 동의
							          </button>
							        </h2>
							      </div>
							      
							      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
							         <div class="card-body">
							         	<div class="accordion-con" style="display: block;">NICE페이먼츠 주식회사, 토스페이먼츠 주식회사, NHN한국사이버결제 주식회사, (주)다날 (이하 “회사”)는 이용자의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률" 및 “개인정보보호법”과 “전자상거래 등에서의 소비자 보호에 관한 법률”을 준수하고 있습니다. 회사는 전자지급결제대행 및 결제대금예치서비스(이하 “서비스”) 이용자로부터 아래와 같이 개인정보를 수집 및 이용합니다.<br>
											<br>
											1. 개인정보의 수집 및 이용목적<br>
											회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
											- 서비스 제공 계약의 성립, 유지, 종료를 위한 본인 식별 및 실명확인, 각종 회원관리, 계약서 발송 등<br>
											- 서비스 제공 과정 중 본인 식별, 인증, 실명확인 및 각종 안내/고지<br>
											- 부정 이용방지 및 비인가 사용방지<br>
											- 서비스 제공 및 관련 업무처리에 필요한 동의 또는 철회(결제대금예치서비스 환불계좌정보 포함) 등 의사확인<br>
											- 이용 빈도 파악 및 인구통계학적 특성에 따른 서비스 제공 및 CRM<br>
											- 서비스 제공을 위한 각 결제수단 별 상점 사업자 정보 등록<br>
											- 서비스 제공(거래승인 등) 및 관련 업무처리(민원, 개인정보 관리상태 점검 등)를 위해 이용자와 해당 결제수단에 관한 계약을 체결한 이용자의 해당 결제수단 발행자 (ex) 신용카드의 경우 해당 신용카드사)에게 이용자의 결제정보, 개인정보 보관내역 등 전송<br>
											- 회사가 제공하는 소비자보호법 메일 발송<br>
											(결제수단 발행자에 대한 상세 내용 아래 참조)<br>
											※ 결제수단별 발행자<br>
											가. 신용카드: 국민/비씨/롯데/삼성/NH농협/현대/신한/하나/우리 등 신용카드사<br>
											나. 계좌이체: 은행(경남/광주/국민/기업/농협/대구/부산/산업/새마을금고/수협/신한/신협/외환/우리/우체국/전북/제주/하나/씨티/SC제일은행 등), 증권(동양/미래에셋/삼성/신한/한투/한화 등), 금융결제원, 엘지유플러스 주식회사<br>
											다. 가상계좌: 은행(국민/농협/우리/신한/하나/기업/우체국/외환/부산/대구 등), 세틀뱅크㈜, 케이아이비넷㈜<br>
											라. 휴대폰: (주)SKT/㈜KT/㈜LGU+/㈜KG모빌리언스/㈜다날/갤럭시아커뮤니케이션즈㈜<br>
											마. 현금영수증 발행: 국세청<br>
											바. 본인확인 인증: 케이아이비넷㈜/세틀뱅크㈜/㈜KG모빌리언스<br>
											사. 간편결제 제휴사: 에스케이플래닛㈜/㈜엘지씨엔에스/㈜카카오/㈜신세계아이앤씨/엔에이치엔페이코㈜/엔에이치엔한국사이버결제㈜/삼성전자㈜/롯데멤버스㈜<br>
											아. 상품권: 한국문화진흥<br>
											- 기타 회사가 제공하는 이벤트 등 광고성 정보 전달(결제알림메일 내), 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 실제 마케팅 활동<br>
											<br>
											2. 수집하는 개인정보 항목 및 수집방법<br>
											1) 개인정보 수집항목<br>
											가. 필수 항목<br>
											- 이용자의 성명(가맹점의 경우, 대표자명 및 담당자명), 생년월일, 휴대폰번호(가맹점의 경우 대표자 휴대폰번호 및 담당자 휴대폰번호), 고유식별정보, 전화번호, 이메일주소(가맹점의 경우 대표자 이메일주소 및 담당자 이메일주소), 상호명, 사업자번호(법인번호), 업종 및 업태, 쇼핑몰URL, 사업장주소, 대표번호, 팩스번호, 거래대금지급정보(결제은행, 계좌번호, 계좌명) 및 상품 또는 용역 거래정보<br>
											- 상기 명시된 개인정보 수집항목 이외의 서비스 이용과정이나 서비스 처리과정에서 추가 정보(접속 IP/MAC Address, 쿠키, e-mail, 서비스 접속 일시, 서비스 이용기록, 불량 혹은 비정상 이용기록, 결제기록)들이 자동 혹은 수동으로 생성되어 수집 될 수 있습니다.<br>
											나. 선택 항목<br>
											- 필수항목 이외에 계약서류에 기재된 정보 또는 고객이 제공한 정보(결제대금예치서비스 환불계좌정보(은행명/계좌번호/예금주 등)<br>
											- 주소, 팩스번호 등<br>
											2) 개인정보 수집방법<br>
											- 홈페이지(NICEPAY 신규 서비스 신청 게시판), 서면양식, 팩스, E-Mail, 회사가 제공하는 전자금융서비스 결제창 및 업무제휴 계약을 체결한 제휴사로부터 이용자가 직접 제시한 정보를 수집<br>
											<br>
											3. 개인정보의 보유 및 이용기간<br>
											이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기 합니다. 단, 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의하여 보존할 필요가 있는 경우 관련 법령에서 정한 일정한 기간 동안 개인정보를 보존합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>
											1) 계약 또는 청약 철회 등에 관한 기록 : 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
											2) 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
											3) 건당 1만원 초과 전자금융거래에 관한 기록 : 5년 (전자금융거래법)<br>
											4) 소비자의 불만 또는 분쟁 처리에 관한 기록 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
											5) 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률)<br>
											6) 방문에 관한 기록 : 3년 (통신비밀보호법)<br>
											7) 건당 1만원 이하 전자금융거래에 관한 기록 : 1년 (전자금융거래법)<br>
											8) 본인확인에 관한 기록 : 6개월 (정보통신 이용촉진 및 정보보호 등에 관한 법률)<br>
											<br>
											4. 이용자의 개인정보의 수집 및 이용 거부<br>
											이용자는 회사의 개인정보 수집 및 이용 동의를 거부할 수 있습니다. 단, 동의를 거부 하는 경우 서비스 결제가 정상적으로 완료 될 수 없음을 알려 드립니다.<br>
											※ 개인정보의 처리와 관련된 사항은 회사의 개인정보처리방침에 따릅니다.<br>
											<br>
											&nbsp;</div>
							         </div>
							      </div>
					   		</div>
						   
						   <div class="card">
						      <div class="card-header" id="headingThree">
						        <h2 class="mb-0">
						          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						            개인정보 제공 및 위탁 동의
						          </button>
						        </h2>
						      </div>
						      
						      <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						         <div class="card-body">
						            <div class="accordion-con" style="display: block;">NICE페이먼츠 주식회사, 토스페이먼츠 주식회사, NHN한국사이버결제 주식회사, (주)다날 (이하 “회사”)는 이용자의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률" 및 “개인정보보호법”과 “전자상거래 등에서의 소비자 보호에 관한 법률”을 준수하고 있습니다. 회사는 전자지급결제대행 및 결제대금예치서비스(이하 “서비스”) 이용자로부터 아래와 같이 개인정보를 제3자에게 제공 합니다.<br>
										<br>
										1. 개인정보 제공<br>
										회사는 이용자의 개인정보를 [개인정보의 수집 및 이용목적]에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>
										- 이용자들이 사전에 동의한 경우(이용자가 사전에 동의한 경우란, 서비스 이용 등을 위하여 이용자가 자발적으로 자신의 개인정보를 제3자에게 제공하는 것에 동의하는 것을 의미합니다), 이러한 경우에도, 회사는 이용자에게 (1) 개인정보를 제공받는 자, (2) 그의 이용목적, (3) 제공되는 개인정보의 항목, (4) 개인정보의 보유 및 이용기간을 사전에 고지하고 이에 대해 명시적/개별적으로 동의를 얻습니다. 이와 같은 모든 과정에 있어서 회사는 이용자의 의사에 반하여 추가적인 정보를 수집하거나, 동의의 범위를 벗어난 정보를 제3자와 공유하지 않습니다.<br>
										- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br>
										- 개인 맞춤형 광고 서비스를 제공하기 위해 특정 개인을 식별할 수 없는 형태로 제휴사에 제공하는 경우<br>
										회사의 서비스 이행을 위하여 개인정보를 제3자에게 제공하고 있는 경우는 다음과 같습니다.<br>
										1) 이용 목적: 신용카드 결제<br>
										- 제공 받는자<br>
										가. 신용카드사: 국민/비씨/롯데/삼성/NH농협/현대/신한/하나/우리<br>
										나. 은행: 신한/SC제일/씨티/하나/농협/기업/국민/저축/수협/신협/우체국/새마을금고/대구/부산/경남/광주/전북/조흥/제주<br>
										다. VAN사: NICE정보통신/KIS정보통신/한국신용카드결제/코밴<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										2) 이용 목적: 계좌이체 결제<br>
										- 제공 받는자:<br>
										가. 은행: 경남/광주/국민/기업/농협/대구/부산/산업/새마을금고/수협/신한/신협/외환/우리/우체국/전북/제주/하나/씨티/SC제일은행<br>
										나. 증권: 동양/미래에셋/삼성/신한/한투/한화<br>
										다. 기타: 금융결제원/엘지유플러스 주식회사<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										3) 이용 목적: 가상계좌 결제<br>
										- 제공 받는자:<br>
										가. 은행: 국민/농협/우리/신한/하나/기업/우체국/외환/부산/대구<br>
										나. 기타: 케이아이비넷(주)/세틀뱅크㈜<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										4) 이용 목적: 휴대폰 결제<br>
										- 제공 받는자:<br>
										가. 이동통신사: (주)SKT/㈜KT/㈜LGU+/㈜KG모빌리언스<br>
										나. 기타: ㈜다날/갤럭시아커뮤니케이션즈㈜<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										5) 이용 목적: 현금영수증 발행<br>
										- 제공 받는자: 국세청<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										6) 이용 목적: 본인확인 인증<br>
										- 제공 받는자: 케이아이비넷㈜/세틀뱅크㈜/㈜KG모빌리언스<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										7) 이용 목적: 간편결제<br>
										- 제공 받는자:<br>
										에스케이플래닛㈜/㈜엘지씨엔에스/㈜카카오/㈜신세계아이앤씨/엔에이치엔페이코㈜/엔에이치엔한국사이버결제㈜/삼성전자㈜/롯데멤버스㈜<br>
										- 개인정보 항목: 결제정보<br>
										- 보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										8) 이용 목적: 상품권 결제<br>
										- 제공 받는자: 한국문화진흥<br>
										- 개인정보 항목: 결제정보<br>
										보유 및 이용기간: 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다(단, 다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관).<br>
										2. 이용자의 개인정보 제3자 제공에 대한 거부<br>
										이용자는 회사의 개인정보의 제3자 제공에 대한 동의를 거부할 수 있습니다. 단, 동의를 거부 하는 경우 서비스 결제가 정상적으로 완료 될 수 없음을 알려 드립니다.<br>
										※ 개인정보의 처리와 관련된 사항은 회사의 개인정보처리방침에 따릅니다.<br>
										&nbsp;</div>
							         </div>
							      </div>
							    </div>
							  </div>
							</div>
						</div>
					</div>
				    
				    
				  </div>
				</div>
				
				
				<!-- 모달 버튼 -->
				<a href="#" class="approval-agreed" data-modal-target="#provision3-modal">
				  <span>개인정보 수집 및 이용 동의</span>
				  <span>내용보기</span>
				</a>
				
				<!-- 모달 창 -->
				<div id="provision3-modal" class="modal approval-modal">
				  <div class="modal-content approval-modal-content">
				    <span class="approval-modal-close">&times;</span>    <!--  &times; 는 X 표 -->
				    <h2>개인정보 수집 및 이용 동의</h2>
				    
				    
				    <div class="container" style="border: solid 1px red">
						<div class="row">
							
						
							<div style="border: solid 1px #666666;"></div>
							
							
							<div class="accordion col-12" id="accordionExample">		<!-- 아이디 값이 중요하다. -->
							   <div class="card">
							      <div class="card-header" id="headingOne">
							        <h2 class="mb-0">
							          <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							            개인정보 수집 · 이용 동의
							          </button>
							        </h2>
							      </div>
							
							      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
							         <!-- .collapse show 는 맨 처음에는  내용물을 보여주도록 하는 것임. -->
							         <div class="card-body">
							           <div class="accordion-con" style="display: block;"><b>개인정보 수집· 이용 목적</b><br>
											상품 구매 및 상품 배송<br>
											<br>
											<b>개인정보 수집 항목</b><br>
											주문 정보 : 이름, 휴대전화, 이메일<br>
											배송 정보 : 이름, 주소, 휴대전화<br>
											<br>
											<b>개인정보 보유 및 이용 기간</b><br>
											이용자의 개인정보는 "자. 개인정보 파기절차 및 방법"의 기준으로 탈퇴요청 후 개인정보 수집 및 이용목적이 달성되면 지체없이 파기 합니다. 다만, 통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>
											- (전자상거래법) 계약 또는 청약철회 등에 관한 기록 : 5년<br>
											- (전자상거래법) 대금결제 및 재화등의 공급에 관한 기록 : 5년<br>
											- (전자상거래법) 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br>
											- (통신비밀보호법) 로그인 기록(로그기록, 접속지의 추적자료) : 3개월<br>
											<br>
											회원에서 탈퇴한 후 회원 재가입, 임의해지 등을 반복적으로 행하여 회사가 제공하는 할인쿠폰, 이벤트 혜택 등으로 경제상의 이익을 취하거나 이 과정에서 명의를 무단으로 사용하는 편법과 불법행위를 하는 회원을 차단 하고자 회원 탈퇴 후 90일 동안 보관합니다 - 부정이용기록에 대한 기록 : 1년<br>
											<br>
											<b>※ 이용자(정보주체자)는 개인정보 수집 및 이용 동의를 거부할 권리가 있습니다. 단, 개인정보 수집 및 이용 동의 거부 시 서비스 이용제 제약이 있을 수 있습니다.</b></div>
								      </div>
								   </div>
							   
								</div>
							</div>
						</div>
					</div>
								    
				    
				  </div>
				</div>
				
				
                
              	<div class="approval-sidebar-line col-sm-10 offset-sm-1"></div>
                
                
                <div style="width: 100%; text-align: center;">
		            <div class="custom-checkbox">		       
		                <input type="checkbox" id="checkTerms" class="approval-checkbox">
		                <label for="checkTerms">상기 필수약관을 확인하였으며<br>결제에 동의합니다.</label>
		            </div>
        		</div>
			</div> 
		</div>
	</div>
	
	<!--  ~~~~~~~~~~~~~~~ 푸터 부분 ~~~~~~~~~~~~~~~~ -->
	
	
	
	<div class="footer">
		<div class="footerMenu">
			<nav>
				<a href="#">회사소개</a>
				<a href="#">공지사항</a>
				<a href="#">입점 · 제휴 · 광고문의</a>
				<a href="#">이용약관</a>
				<a href="#" style="color:black">개인정보처리방침</a>
			</nav>
		</div>
		
		<div class="footerInfo">
		    <div class="footermyimg">
		    	<img src="../images/오조닭조 이미지.png"/>
		    </div>
		    
		    <div class="footercompanyInfo">
		    	<h6 style="font-size: 14pt">(주)오조닭조</h6>
		    	<p>대표 : 강성은 | 주소 : 서울특별시 마포구 월드컵북로 21, 2층(풍성빌딩) | 사업자등록번호 : 02-336-8546 <a href="#" style="color:#7f7a76; text-decoration: underline" >사업자정보 확인</a> | 강팀장조팀원 : 강성은, 지성인, 민동현, 손주선, 김형석, 김나윤 | 개인정보보호책임자 : 서영학</p>
		    	<p>&copy; Copyright©오조닭조 All rights reserved.</p>
		    </div>
		    
		    <div class="footerclientService">
		    	<h6 style="font-size: 14pt">고객센터 <span style="color: orange; font-weight: 750;">02-2025-4733</span></h6>
		    	<p>FAX 02-6937-0039 &nbsp;&nbsp; help@saramin.co.kr</p>
		    	<a href="#">고객의소리</a>
		    	<a href="#">1:1문의</a>
		    	<div class="footericon">
		    		<a href="#"><i class="fa-brands fa-youtube footer-i"></i></a>
		    		<a href="#"><i class="fa-brands fa-facebook-f footer-i"></i></a>
		    		<a href="#"><i class="fa-brands fa-instagram footer-i"></i></a>
		    		<a href="#"><i class="fa-brands fa-twitter footer-i"></i></a>
		    		<a href="#"><i class="fa-solid fa-blog footer-i"></i></a>
		    		<a href="#"><i class="fa-brands fa-google footer-i"></i></a>
		    	</div>
		    </div>	
		</div>
		<hr style="width:90%; margin: 0 auto;">
		<div class="footerbtm">
			<a href="#"><img style="height: 30px;"src="../images/isms이미지.png"/>&nbsp;정보보호 관리체계 ISMS 인증 획득</a>
			<a href="#"><img style="height: 40px;"src="../images/우리은행이미지.png"/>&nbsp;우리은행 구매 안전 서비스 가입사실 확인</a>
		</div>
	</div>	
	
		
	
</body>	
</html>
    