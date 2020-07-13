<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Billy</title>
<meta name="description" content="Book Preview with BookBlock" />
<meta name="keywords"
   content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"   href="/milyTotal/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/milyTotal/css/demo.css" />
<link rel="stylesheet" type="text/css"   href="/milyTotal/css/bookblock.css" />
<link rel="stylesheet" type="text/css"   href="/milyTotal/css/component.css" />
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript"
   src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script src="/milyTotal/js/sign.js" charset="UTF-8"></script>


<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
   $(function() {
      //total font 
      $("*").css("font-family", "times new roman");

      //accrdion css 
      
      $(".accordion_title").css({
         "background-color" : '#c8c8c8',
         "border-radius" : "10px",
         "margin" : "20px",
         "text-align" : "center"
      });

      // accordion event 
      $(".accordion_title").click(function() {         
         alert($(this).text());
      });

   });
</script>
<style>
.ui-menu {
   width: 150px;
}

.accordion_title {
   font-size: 20px;
}
</style>



</head>
<body>
   <div class="main"  style="display: inline;"> 

      <div id="scroll-wrap" class="container" align="center">

         <header class="codrops-header">
            <div class="codrops-top clearfix">

               <a class="searchBox"> <select name="query" id="query">
                     <option value="empty" selected="selected">전체</option>
                     <option value="title">제목</option>
                     <option value="authors">저자</option>
               </select> <input class="searchInput" type="text" name=""
                  placeholder="Search Data" size="40"> <a href="#"><span>search</span></a>
               </a> <span class="right"><a
                  class="codrops-icon codrops-icon-drop" href="#" id="login"><span>Login</span></a></span>
               <span class="right"><a
                  class="codrops-icon codrops-icon-drop" href="#" id="join"><span>Join</span></a></span>
            </div>
            <h1>Billy's Book</h1>
         </header>
         
         <div id="bookshelf" class="bookshelf">

            <div class="">
               <div style="display: inline;"
                  class="accordion_title">
                  <strong>&emsp;LIFE&emsp;</strong>
               </div>
               <div style="display: inline;" class="accordion_title">
                  <strong>&emsp;NOVLE&emsp;</strong>
               </div>
               <div style="display: inline;" class="accordion_title">
                  <strong>&emsp;COMIC&emsp;</strong>
               </div>
               <div style="display: inline;" class="accordion_title">
                  <strong>&emsp;HEALING&emsp;</strong>
               </div>
               <div style="display: inline;" class="accordion_title">
                  <strong>&emsp;TREND&emsp;</strong>
               </div>
            </div>

<!-- <div class="col-lg-3"  style="display: inline;">

            <h1 id=myPage class="my-4">My Page</h1>

            <div class="accordion_banner">
               <div class="accordion_title">
                  <h5>
                     <strong> My Library</strong>
                  </h5>
               </div>
               <div class="accordion_sub_group">
                  <div class="accordion_sub">* Rental List</div>
                  <div class="accordion_sub">* Like List</div>
                  <div class="accordion_sub">* Purchase List</div>
               </div>

               <div class="accordion_title">
                  <h5>
                     <strong> My Information</strong>
                  </h5>
               </div>
               <div class="accordion_sub_group">
                  <div class="accordion_sub">* Edit My Info</div>
                  <div class="accordion_sub">* My Posts</div>
               </div>
            </div>



         </div> -->
            <figure>
               <div class="book" data-book="book-1"></div>
               <div class="buttons">
                  <a href="">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     속사이듯 사랑을<br>노래하다. <span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-2"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     귀멸의 칼날<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Understanding the life of a worm can be enlightening to
                        anybody. Dive into the micro cosmos of a creeping and burrowing
                        invertebrate and learn how a limbless little creature reaches
                        happiness.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-8"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     황골탈태<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-3"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     allure<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-4"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     명탐정 코난<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-5"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     나비 호랑이를 물다<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-6"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     겁쟁이 페달<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-7"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     백랑 신이되다<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
            <figure>
               <div class="book" data-book="book-9"></div>
               <div class="buttons">
                  <a href="#">Look inside</a><a href="#">Details</a>
               </div>
               <figcaption>
                  <h2>
                     이상한 엄마<span>작가</span>
                  </h2>
               </figcaption>
               <div class="details">
                  <ul>
                     <li>Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                        aliqua.</li>
                     <li>Graham Press</li>
                     <li>12.09.2010</li>
                     <li>397 pages</li>
                  </ul>
               </div>
            </figure>
         </div>
      </div>
      <!-- /bookshelf -->
   </div>
   <!-- /main -->

   <div class="related"></div>
   <!-- /container -->

   <!-- Fullscreen BookBlock -->
   <!-- for demo purpose we repeat each bookblock -->
   <div class="bb-custom-wrapper" id="book-1">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-2">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-3">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-4">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-5">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-6">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-7">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-8">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <div class="bb-custom-wrapper" id="book-9">
      <div class="bb-bookblock">
         <div class="bb-item">
            <div class="bb-custom-side page-layout-3">
               <div>
                  <h3>Portraits</h3>
                  <p>Photography (1999 &ndash; 2013)</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-3"></div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-1">
               <h3>
                  Chapter 9 <span>Nomadic Lifestyle</span>
               </h3>
            </div>
            <div class="bb-custom-side page-layout-1">
               <p>Candy canes lollipop macaroon marshmallow gummi bears
                  tiramisu. Dessert croissant cupcake candy canes. Bear claw faworki
                  faworki lemon drops. Faworki marzipan sugar plum jelly-o marzipan
                  cookie.</p>
            </div>
         </div>
         <div class="bb-item">
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Aa</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Bb</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
            </div>
            <div class="bb-custom-side page-layout-2">
               <div>
                  <h3>Cc</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl챕.</p>
               </div>
               <div>
                  <h3>Dd</h3>
                  <p>Faworki marzipan sugar plum jelly-o marzipan. Souffl챕
                     tootsie roll jelly beans. Sweet icing croissant dessert bear
                     claw. Brownie dessert cheesecake danish jelly pudding bear claw
                     souffl.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- /bb-bookblock -->
      <nav>
         <a href="#" class="bb-nav-prev">Previous</a> <a href="#"
            class="bb-nav-next">Next</a> <a href="#" class="bb-nav-close">Close</a>
      </nav>
   </div>
   <!-- /bb-custom-wrapper -->
   <script src="/bily/js/bookblock.min.js"></script>
   <script src="/bily/js/classie.js"></script>
   <script src="/bily/js/bookshelf.js"></script>
</body>
</html>