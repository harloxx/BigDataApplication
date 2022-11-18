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
      <div class="m-un" onclick="location.href='../index.html'">영화 목록</div>
      <div class="m" onclick="location.href='./statics.php'">장르별 영화 통계</div>
      <div class="m-un" onclick="location.href='../distributor/distributor.php'">배급사 목록</div>
  
    </div>
     <div class="content">
       <div class="content-title">
          장르별 영화 통계
       </div>
       <div class="content-detail">
        <table border="1">
            <tr><th>장르</th><th>국가</th><th>영화 수</th></tr>
            
            <!-- php -->
            <?php
            $connect = mysqli_connect("localhost","team12","team12", "team12");

            if(!$connect){
            	die("연결에 실패했습니다.".mysql_connect_error()); //실패하면 연결중지
            }

            $get_total = "select count(*) total from film";
            $get_total_result = mysqli_query($connect, $get_total);
            $g_t_r_a = mysqli_fetch_array($get_total_result);
            $total_cnt = $g_t_r_a['total'];
            echo '<div class="detail-title"><i>전체 영화 수 : '.$total_cnt.'</i></div><br/>';


            $get_statics = "select g.name gn, c.name cn, count(*) total
            from genre_film gf
            join genre g on gf.genre_id = g.id
            join film f on gf.film_id = f.id
            join country c on f.country_id = c.id
            group by g.name, c.name with rollup";
            $get_statics_result = mysqli_query($connect, $get_statics);

            $genre = "";
            $country = "";
            $total = 0;
            if($get_statics_result) {
              while($arr=mysqli_fetch_array($get_statics_result)) {
                if (is_null($arr['cn'])) {
                  if (is_null($arr['gn'])) {
                    $genre = "전체 영화 통계";  
                  } else {
                    $genre = $arr['gn']." 장르 영화 통계";
                  }
                  $country = "-";
                } else {
                  $genre = $arr['gn'];
                  $country = $arr['cn'];
                }
                $total = $arr['total'];
              
                echo '<tr><td>'.$genre.'</td><td>'.$country.'</td><td>'.$total.'</td></tr>';
              }
            }

            mysqli_close($connect);
            ?>
            
        </table>
        <br/>
        
       </div>
       <br/>
       <button class="button-pink" onclick="location.href='./genre.php'">장르 추가</button>
     </div>
     
   </div>
    

<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
