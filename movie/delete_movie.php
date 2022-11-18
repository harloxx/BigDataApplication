<meta charset="utf-8">
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
        영화 상세 조회
      </div>
      <div class="content-detail">
        <?php
        session_start();
            $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
            if(mysqli_connect_error()){
                printf("Connect failed: %s\n", mysqli_connect_error());
                exit();
            }else{
                $fid = $_SESSION['film_id'];
                $sql = "DELETE rs
                FROM Review_Star rs
                JOIN Review r
                ON r.id=rs.review_id
                WHERE r.film_id='$fid'";
                $sql_r = "DELETE FROM Review
                WHERE Review.film_id='$fid'";
                $sql_df = "DELETE FROM Distributor_Film
                WHERE Distributor_Film.film_id='$fid'";
                $sql_gf = "DELETE FROM Genre_Film
                WHERE Genre_Film.film_id='$fid'";
                $sql_f = "DELETE FROM Film WHERE id='$fid'";
                $delete_reviews = mysqli_query($mysqli, $sql);
                $res_r=mysqli_query($mysqli, $sql_r);
                $res_df=mysqli_query($mysqli, $sql_df);
                $res_gf=mysqli_query($mysqli, $sql_gf);
                $res_f=mysqli_query($mysqli, $sql_f);
                if($res_f){
                    echo("<div>영화를 성공적으로 삭제했습니다.</div>");
                }else{
                    echo("<div>리뷰 삭제 실패로 영화를 삭제할 수 없습니다.</div>");
                }
            }
            mysqli_close($mysqli);
        ?>
      </div>
      <br/><br/>
    </div>
  </div>
<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
