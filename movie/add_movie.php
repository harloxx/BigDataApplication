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
      <div class="m" onclick="location.href='../index.html'">영화 목록</div>
      <div class="m-un" onclick="location.href='../genre/statics.php'">영화 장르별 통계</div>
      <div class="m-un" onclick="location.href='../distributor/distributor.php'">배급사 목록</div>
  
    </div>
       <form class="search-container" action="add_movie.php" method="POST">
          <div class="container-title">영화 추가</div>
		  <br> 추가 완료 <br>
        </form>
       
   </div>
    

<!-- End your code here -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>

<?php
$connect = mysqli_connect("localhost","team12","team12", "team12");

if(!$connect){
	die("연결에 실패했습니다.".mysql_connect_error()); //실패하면 연결중지
}

$title = $_POST['filmTitle'];
$year = $_POST['filmYear'];
$genre = $_POST['filmGenre'];
$country = $_POST['filmCountry'];
$distributor = $_POST['filmDistributor'];

// trancaction
try {
	mysqli_begin_transaction($connect);
	// genre
	$get_genre_id = "select g.id from genre g where g.name = '$genre'"; 
	$get_genre_id_result = mysqli_query($connect, $get_genre_id);
	$get_genre_id_result_arr = mysqli_fetch_array($get_genre_id_result);
	$genre_id = 0;
	if(is_null($get_genre_id_result_arr)) {
		// 장르 추가
		$create_genre = "insert into genre(name) value('$genre')";
		mysqli_query($connect, $create_genre);

		$get_genre_id = "select g.id from genre g where g.name = '$genre'"; 
		$get_genre_id_result = mysqli_query($connect, $get_genre_id);
		$get_genre_id_result_arr = mysqli_fetch_array($get_genre_id_result);
	}
	$genre_id = $get_genre_id_result_arr['id'];

	// country
	$get_country_id = "select c.id from country c where c.name = '$country'"; 
	$get_country_id_result = mysqli_query($connect, $get_country_id);
	$get_country_id_result_arr = mysqli_fetch_array($get_country_id_result);
	$country_id = 0;
	if(is_null($get_country_id_result_arr)) {
		// 국가 추가
		$create_country = "insert into country(name) value('$country')";
		mysqli_query($connect, $create_country);

		$get_country_id = "select c.id from country c where c.name = '$country'"; 
		$get_country_id_result = mysqli_query($connect, $get_country_id);
		$get_country_id_result_arr = mysqli_fetch_array($get_country_id_result);
	}
	$country_id = $get_country_id_result_arr['id'];

	// distributor
	$get_distributor_id = "select d.id from distributor d where d.name = '$distributor'"; 
	$get_distributor_id_result = mysqli_query($connect, $get_distributor_id);
	$get_distributor_id_result_arr = mysqli_fetch_array($get_distributor_id_result);
	$distributor_id = 0;
	if(is_null($get_distributor_id_result_arr)) {
		//배급사 추가
		$create_distributor = "insert into distributor(name) value('$distributor')";
		mysqli_query($connect, $create_distributor);

		$get_distributor_id = "select d.id from distributor d where d.name = '$distributor'"; 
		$get_distributor_id_result = mysqli_query($connect, $get_distributor_id);
		$get_distributor_id_result_arr = mysqli_fetch_array($get_distributor_id_result);
	}
	$distributor_id = $get_distributor_id_result_arr['id'];

	// director
	$get_director_id = "select d.id from director d where d.name = '감독 정보 없음'";
	$get_director_id_result = mysqli_query($connect, $get_director_id);
	$get_director_id_result_arr = mysqli_fetch_array($get_director_id_result);
	$director_id = $get_director_id_result_arr['id'];
	// rating
	$get_rating_id = "select r.id from rating r where r.rate = '15세관람가'";
	$get_rating_id_result = mysqli_query($connect, $get_rating_id);
	$get_rating_id_result_arr = mysqli_fetch_array($get_rating_id_result);
	$rating_id = $get_rating_id_result_arr['id'];
	// type
	$get_type_id = "select t.id from film_type t where t.name = '유형 정보 없음'";
	$get_type_id_result = mysqli_query($connect, $get_type_id);
	$get_type_id_result_arr = mysqli_fetch_array($get_type_id_result);
	$type_id = $get_type_id_result_arr['id'];
	// film
	$create_film = "insert into film(title, year, country_id, director_id, rating_id, type_id) values('$title', '$year', '$country_id', '$director_id', '$rating_id', '$type_id')";
	$create_film_result = mysqli_query($connect, $create_film);

	$get_film_id = "select f.id from film f where f.title = '$title' and f.year = '$year'";
	$get_film_id_result = mysqli_query($connect, $get_film_id);
	$get_film_id_result_arr = mysqli_fetch_array($get_film_id_result);
	$film_id = $get_film_id_result_arr['id'];

	// genrefilm
	$create_genre_film = "insert into genre_film(film_id, genre_id) values('$film_id', '$genre_id')";
	$create_g_f_result = mysqli_query($connect, $create_genre_film);

	// distributorfilm
	$create_distributor_film = "insert into distributor_film(film_id, distributor_id) values('$film_id', '$distributor_id')";
	$create_d_f_result = mysqli_query($connect, $create_distributor_film);

	mysqli_commit($connect);
} catch (mysqli_sql_exception $exception) {
	mysqli_rollback($connect);
	throw $exception;
}
mysqli_close($connect);
?>