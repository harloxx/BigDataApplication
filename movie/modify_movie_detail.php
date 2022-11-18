<!DOCTYPE html>
<html lang="ko">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta charset="UTF-8">
        <title>Travel Essential Items</title>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <header>
            <div class="title">MOVIE INFORMATION</div>

            <div class="subtitle">
                This is final project for "Big Data Application". <br/> 
                We are team <strong><i>nineteen</i></strong>       
            </div>

            <img class="movie-icon"src="https://cdn.pixabay.com/photo/2016/03/31/18/36/cinema-1294496__340.png"/>
        </header>
        <div class="container">
      <div class="menu">
        <div class="m" onclick="location.href='../index.html'">영화 목록</div>
        <div class="m-un" onclick="location.href='../genre/statics.php'">
          장르별 영화 통계
        </div>
        <div
          class="m-un"
          onclick="location.href='../distributor/distributor.php'"
        >
          배급사 목록
        </div>
      </div>

        <div class="container-title">
            <?php
                $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");

                if(mysqli_connect_error()){
                    prinf("Connect failed: %s\n", mysqli_connect_error());
                    exit();
                }else{
                    try{
                        session_start();
                        $title=$_POST['title'];
                        $fid=$_SESSION['film_id'];
                        $sql="UPDATE film SET title='".$_POST['title']."', year='".$_POST['year']."' WHERE id='".$fid."'";
                        $res = mysqli_query($mysqli, $sql);

                        if($res){
                            echo("<br/><br/>");
                            echo ("<div>성공적으로 수정을 완료하였습니다</div>");
                        }else{
                            echo("<div>update를 실패하였습니다.<div>");
                        }
                        
                    }catch(Exception $e){
                        $mysqli -> rollback();
                        $mysql -> autocommit(TRUE);
                    }
                    mysqli_close($mysqli);
                }
            ?>
        </div>
    </body>
</html>