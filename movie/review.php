<!DOCTYPE html>
<html>
<head>
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
     <div class="content">
       <div class="content-title">
          영화 리뷰 조회
       </div>
       <div class="content-detail">
       <br/>
        <div class="content-small-text"><i>(리뷰 / 별점)</i></div>
      <?php
          $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
          if(mysqli_connect_error()){
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
          }else{
           try{
            session_start();
            $fid = $_SESSION['film_id'];
         
               
         $sql= "SELECT R.id, R.review AS review, S.point AS point, rank() OVER (order by point desc) AS ranking
         FROM Review_star AS RS
      JOIN Review AS R
      ON RS.review_id=R.id
      JOIN Star AS S
      ON RS.star_id=S.id
      JOIN Film AS F
      ON F.id=R.film_id
         WHERE F.id = '".$fid."'";
          $res = mysqli_query($mysqli, $sql);
         
         while($newArray=mysqli_fetch_array($res, MYSQLI_ASSOC)){
         echo "<div>".$newArray['review']." / ".$newArray['point']."</div>";
      
	  
	  echo "<form action=\"review_modify_page.php\" method=\"post\">";
	  echo "<div>";
      echo "<button class=\"button-content-small\" onclick=\"location.href='./review_modify_page.php'\">수정</button>";
	  echo "<input type=\"hidden\" name=\"review_id\" value=".$newArray['id'].">";
      echo "</div>";
	  echo "</form>";
            }
         }
         catch(Exception $e){
         echo "조회할 수 없습니다.";
         }
          }
      
      
   mysqli_close($mysqli);

   ?>
  
  <br/>
       <div>
        
       <br/>
        <button class="button-pink" onclick="location.href='./review.html'">작성</button>
       </div>
     </div>
     
   </div>
    

<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>

