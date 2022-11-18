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
      <form action="genre_add.php" method="post">
       <div class="search-container">
          장르 추가
         <input type="text" name="genre"/>
         <input class="button-pink" type="submit" value="추가">
       </div>
      </form>
      
       <div class="result">
        <?php
            $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");
                    
            if(mysqli_connect_error()){
                printf("Connect failed: %s\n", mysqli_connect_error());
                exit();
            }else{
                $sql = "SELECT id, name FROM Genre";
                $res = mysqli_query($mysqli, $sql);
                if($res){
                    while($newArray = mysqli_fetch_array($res, MYSQLI_ASSOC)){
                        echo "<form action=\"genre_delete.php\" method=\"post\">";
                        echo "<div>";
                        echo $newArray['name'];
                        echo "<input type=\"hidden\" name=\"genre_id\" value=".$newArray['id'].">";
                        echo "<input class=\"button-small\" type=\"submit\" value=\"삭제\">";
                        echo "</div>";
                        echo "</form>";
                    }
                }
            }
            mysqli_free_result($res);
            mysqli_close($mysqli);
        ?>       
        </div>
      </div>
   </div>
    


<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>