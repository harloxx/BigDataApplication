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
          $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
          if(mysqli_connect_error()){
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
          }else{
            session_start();
            $fid = $_GET['film_id'];
            $_SESSION['film_id'] = $fid;
            $sql = "SELECT f.title, f.year, c.name AS country, r.rate, t.name AS movie_type, d.name AS director
                    FROM Film f
                    JOIN Country c
                    ON f.country_id = c.id
                    JOIN Rating r
                    ON f.rating_id = r.id
                    JOIN Film_Type t
                    ON f.type_id = t.id
                    JOIN Director d
                    ON f.director_id = d.id
                    WHERE f.id = '".$fid."'";
            $res = mysqli_query($mysqli, $sql);

            $sql_distributor = "SELECT d.name AS dtr
            FROM Distributor d 
            JOIN Distributor_Film df 
            ON d.id = df.distributor_id
            JOIN Film f
            ON df.film_id = f.id
            WHERE f.id = '".$fid."'";
            $res_distributor = mysqli_query($mysqli, $sql_distributor);

            $sql_genre = "SELECT g.name AS gnr
            FROM Genre g
            JOIN Genre_Film gf 
            ON g.id = gf.genre_id
            JOIN Film f
            ON gf.film_id = f.id
            WHERE f.id = '".$fid."'";
            $res_genre = mysqli_query($mysqli, $sql_genre);

            $sql_point = "SELECT AVG(s.point) AS starp
            FROM Star s
            JOIN Review_Star rs
            ON s.id = rs.star_id
            JOIN Review r
            ON r.id = rs.review_id
            GROUP BY r.film_id
            HAVING r.film_id = '".$fid."'"; //4
            $res_point = mysqli_query($mysqli, $sql_point);

            if($res_distributor){
              $distributor = "";
              while($newArray = mysqli_fetch_array($res_distributor, MYSQLI_ASSOC)){
                $distributor = $distributor.$newArray['dtr']." ";
              }
            }

            if($res_genre){
              $genre = "";
              while($newArray = mysqli_fetch_array($res_genre, MYSQLI_ASSOC)){
                $genre = $genre.$newArray['gnr']." ";
              }
            }

            if($res_point){
              $point = "별점 정보 없음";
              while($newArray = mysqli_fetch_array($res_point, MYSQLI_ASSOC)){
                $point = $newArray['starp'];
              }
            }

            if($res){
              while($newArray = mysqli_fetch_array($res, MYSQLI_ASSOC)){
                echo "<div class=\"detail-title\"><i>".$newArray['title']."</i></div>";
                echo "<br/>";
                echo "<div>개봉 연도 : ".$newArray['year']."</div>";
                echo "<div>제작 국가 : ".$newArray['country']."</div>";
                echo "<div>상영 등급 : ".$newArray['rate']."</div>";
                echo "<div>영화 타입 : ".$newArray['movie_type']."</div>";
                echo "<div>영화 감독 : ".$newArray['director']."</div>";
                echo "<div>영화 배급사 : ".$distributor."</div>";
                echo "<div>영화 장르 : ".$genre."</div>";
                echo "<div>평균 별점 : ".$point."</div>";
                $sql_multigroup = "SELECT AVG(s.point) AS group_p, g.name, c.name
                  FROM Genre g
                  LEFT OUTER JOIN Genre_Film gf 
                  ON g.id = gf.genre_id
                  LEFT OUTER JOIN Film f
                  ON gf.film_id = f.id
                  LEFT OUTER JOIN Country c
                  ON c.id = f.country_id
                  LEFT OUTER JOIN Review r
                  ON r.film_id = f.id
                  LEFT OUTER JOIN Review_Star rs
                  ON rs.review_id = r.id
                  LEFT OUTER JOIN Star s
                  ON s.id = rs.star_id
                  WHERE g.name='".$genre."'
                  GROUP BY g.id, c.id
                  HAVING c.name='".$newArray['country']."'"; //5-1
                $res_multigroup = mysqli_query($mysqli, $sql_multigroup);
                if($res_multigroup){
                  while($newArray = mysqli_fetch_array($res_multigroup, MYSQLI_ASSOC)){
                    $gpoint = $newArray['group_p'];
                    if($gpoint == null){
                      $gpoint = "별점 정보 없음";
                    }
                  }
                }
                echo "<div>장르 및 국가 평점 : ".$gpoint."</div>";
                echo "<br/>";
              }
            }
          }
          mysqli_free_result($res);
          mysqli_free_result($res_distributor);
          mysqli_free_result($res_genre);
          mysqli_free_result($res_point);
          mysqli_close($mysqli);
        ?>
        <script> 
  function submit2(frm) { 
    frm.action='./modify_movie_detail.html'; 
    frm.submit(); 
    return true; 
  } 
</script> 
        <form action="delete_movie.php" method="delete">
        <div class="button-container">
            <button class="button-content" onclick="return submit2(this.form);">수정</button>
            <input class="button-content" type="submit" value="삭제">
        </div>
        </form>
      </div>
      <br/><br/>
      <div>
        <button class="button-grey" onclick="location.href='./review.php'">리뷰 조회</button>
      </div>
    </div>
  </div>
<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>