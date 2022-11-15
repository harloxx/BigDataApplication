<!DOCTYPE html>
<html lang="ko">
    <head>
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

        <div class="title">
            <?php
                $mysqli = mysqli_connect("localhost", "team12", "team12", "team12");

                if(mysqli_connect_error()){
                    prinf("Connect failed: %s\n", mysqli_connect_error());
                    exit();
                }else{
                    try{
                        $movie=$_POST['film']   
                        $_SESSION['film_id'] =$fid; //update 할 movie id 반환
                        $sql="UPDATE `film` SET title='".$_POST['title']."', year='".$POST['year']."' WHERE id='".$fid."'";
                        $res = mysqli_query($mysqli, $sql);

                        if($res){
                            echo("update success");
                        }catch(mysqli_sql_exception $e){
                            echo("update fail");
                        }
                        
                    }catch(Exception $e){
                        $mysqli -> rollback();
                        $mysql -> autocommit(TRUE);
                    }
                    mysqli_free_result($res)
                    mysqli_close($mysqli);
                }
            ?>
        </div>
    </body>
</html>