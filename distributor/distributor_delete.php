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
      <div class="m-un" onclick="location.href='../index.html'">영화 목록</div>
      <div class="m-un" onclick="location.href='../genre/statics.php'">영화 장르별 통계</div>
      <div class="m" onclick="location.href='../distributor/distributor.php'">배급사 목록</div>
  
    </div>
     <div class="content">
     <?php
            $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
            if(mysqli_connect_error()){
                printf("Connect failed: %s\n", mysqli_connect_error());
                exit();
            }else{
                $dis = $_POST['distributor_id'];
                $sql_update = "UPDATE Distributor_Film
                SET distributor_id = (SELECT id FROM Distributor WHERE name=\"배급사 정보 없음\")
                WHERE distributor_id = $dis";
                $res_update = mysqli_query($mysqli, $sql_update);

                if($res_update){
                    $sql_delete = "DELETE FROM Distributor WHERE id=$dis";
                    $res_delete = mysqli_query($mysqli, $sql_delete);
                    if($res_delete){
                        echo "<div>배급사 삭제에 성공했습니다.</div>";
                    }
                    else{
                        echo("<div>배급사 삭제에 실패했습니다.</div>");
                    }
                }else{
                    echo("<div>배급사 삭제에 실패했습니다.</div>");
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