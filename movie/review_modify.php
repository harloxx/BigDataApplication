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
      <div class="m-un" onclick="location.href='../genre/statics.php'">영화 장르별 통계</div>
      <div class="m-un" onclick="location.href='../distributor/distributor.php'">배급사 목록</div>
  
    </div>
     <div class="content">
     <?php
            $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
            if(mysqli_connect_error()){
                printf("Connect failed: %s\n", mysqli_connect_error());
                exit();
            }else{
              //try{
				session_start();
				$fid = $_SESSION['film_id'];
                $star = $_POST['addStar'];
				$rv = $_POST['addReview'];
				$rid = $_POST['review_id'];
				
				
                $sql_rv = "UPDATE Review SET review = '$rv' WHERE id = $rid";
				$sql_star = "UPDATE Review_Star SET star_id = (SELECT id FROM Star WHERE point=$star) WHERE review_id = $rid";
				
                $res_rv = mysqli_query($mysqli, $sql_rv);
				$res_star = mysqli_query($mysqli, $sql_star);
				
                if($res_rv && $res_star){
                    echo("<div>별점 및 후기 수정 완료</div>");
                }
              //}
             // catch(mysqli_sql_exception $e){
             //   echo("<div>별점 및 후기 수정 실패.</div>");
              //} 
            }
			
            mysqli_close($mysqli);
        ?>
      </div>
   </div>

<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>