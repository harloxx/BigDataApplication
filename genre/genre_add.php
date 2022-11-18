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
      <div class="m" onclick="location.href='./statics.php'">영화 장르별 통계</div>
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
                $gnr = $_POST['genre'];
                $sql = "INSERT INTO Genre (name) VALUE('$gnr')";
                $res = mysqli_query($mysqli, $sql);
                if($res){
                    echo("<div>장르가 성공적으로 추가되었습니다.</div>");
                }
              }
              catch(mysqli_sql_exception $e){
                echo("<div>장르추가에 실패했습니다.</div>");
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