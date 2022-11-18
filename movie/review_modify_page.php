<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
<title>HTML, CSS and JavaScript demo</title>
<link type="text/css" rel="stylesheet" href="../css/style.css"/>
</head>
  
<body>
  <header>
    <div class="title">MOVIE INFORMATION</div>

      <div class="subtitle">
        This is final project for "Big Data Application". <br/> 
        We are team <strong><i>nineteen</i></strong>       
      </div>

    <img class="movie-icon" src="https://cdn.pixabay.com/photo/2016/03/31/18/36/cinema-1294496__340.png"/>
  </header>


   <div class="container">
     <div class="menu">
      <div class="m" onclick="location.href='../index.html'">영화 목록</div>
      <div class="m-un" onclick="location.href='../genre/statics.php'">장르별 영화 통계</div>
      <div class="m-un" onclick="location.href='../distributor/distributor.php'">배급사 목록</div>
  
    </div>
       <form class="search-container" action="review_modify.php" method="post">
          <div class="container-title">영화 후기 및 평점 수정</div>
          <div>
          평점 입력
          <select name="addStar">
            <option value=1 >     ⭐ (1점)</option>            
            <option value=2 >    ⭐⭐ (2점)</option>
            <option value=3 >   ⭐⭐⭐ (3점)</option>
            <option value=4 >  ⭐⭐⭐⭐ (4점)</option>
            <option value=5 > ⭐⭐⭐⭐⭐ (5점)</option>
          </select><br/>
          
          후기 입력
          <input name="addReview" class="review-text" /><br/><br/>
		  
		  <?php
			echo "<input type=\"hidden\" name=\"review_id\" value=".$_POST['review_id'].">";		  
		  ?>
		  
          <button class="button-pink">수정</button>
        </form>
       
   </div>
    


<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>