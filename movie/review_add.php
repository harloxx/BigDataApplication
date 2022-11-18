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
				try{
				session_start();
				$fid = $_SESSION['film_id'];
                $star = $_POST['addStar'];
				$rv = $_POST['addReview'];
				
                $sql_rv = "INSERT INTO review(film_id, review) VALUES($fid, '$rv')";
				$res_rv = mysqli_query($mysqli, $sql_rv);
				
				if($res_rv){
				$sql_get_rid = "select id from review where review.review='$rv'";
				$res_rid = mysqli_query($mysqli, $sql_get_rid);
				
				while($newArray = mysqli_fetch_array($res_rid, MYSQLI_ASSOC)){
					$rid = $newArray['id'];
					$sql_get_sid = "select id from Star
						where point=".$_POST['addStar'];
					$res_sid = mysqli_query($mysqli, $sql_get_sid);
          if($res_sid){
            while($newArray = mysqli_fetch_array($res_sid, MYSQLI_ASSOC)){
              $sid = $newArray['id'];
            }
          }
					
					$sql_rs = "INSERT INTO Review_Star(review_id, star_id) VALUES($rid, $sid)";
					$res_rs = mysqli_query($mysqli, $sql_rs);
					
					break;
				}
				
				}
				
                if($res_rv && $res_rs){
                    echo("<div>별점 및 후기 작성 완료</div>");
                }
				}
				catch(mysqli_sql_exception $e){
                echo("<div>별점 및 후기 작성 실패.</div>");
				} 
            }
			
            mysqli_close($mysqli);
        ?>
      </div>
   </div>
    


<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>