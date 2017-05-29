<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>SocialAGH-prowadzący</title>
	
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	
	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/fontello.css" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Lato&amp;subset=latin-ext" rel="stylesheet">
	<script src="timer.js"></script>
	
</head>

<body onload="odliczanie();">
	
	<div id="container">
	
		<div class="rectangle">
			<div id="logo">SocialAGH</div>
			<div id="zegar">12:00:00</div>
			<div style="clear: both;"></div>
		</div>
		<center>
<?php
      $metoda = $_POST['metoda'];
      $wyrazenie = $_POST['wyrazenie'];
      $wyrazenie = trim($wyrazenie);
      if (!$metoda || !$wyrazenie)
      {
        echo 'Brak parametrów wyszukiwania, wróć do poprzednej strony i spóbuj ponownie!';
        exit;
      }
      if (!get_magic_quotes_gpc())
      {
        $metoda = addslashes($metoda);
        $wyrazenie = addslashes($wyrazenie);
      }
      $db = new mysqli('localhost','root','','prowadzacy');
      
      if (mysqli_connect_errno())
      {
        echo 'Połączenie z bazą nie powiodło się. Spóbuj ponownie';
        exit;
      }
      $db->query('SET NAMES utf8');
      $db->query('SET CHARACTER_SET utf8_unicode_ci');
      $zapytanie = "select * from prowadzacy where ".$metoda. " like '%".$wyrazenie."%'";
      $wynik = $db->query($zapytanie);
      $ile_znaleziono = $wynik->num_rows;
      echo '<p> Liczba znalezionych prowadzacych: '.$ile_znaleziono.'</p>';
      for ($i=0;$i<$ile_znaleziono;$i++)
      {
        $wiersz = $wynik->fetch_assoc();
        echo '<p><b>'.($i+1).'. Nazwisko: '.stripslashes($wiersz['nazwisko']).'</b><br />';
        echo 'Imie: '.stripslashes($wiersz['imie']).'<br />';
	echo 'Tytul: '.stripslashes($wiersz['tytul']).'<br />';
	echo 'Strona: '.stripslashes($wiersz['strona']).'<br />';
        echo 'Siedziba: '.stripslashes($wiersz['Siedziba']).'<br />';
        echo 'Mail: '.stripslashes($wiersz['mail']).'</p><br />';
      }
      $wynik->free();
      $db->close();
    ?>
		</center>
		
		<div class="rectangle">
			
			2017 &copy; AGH strona internetowa AiR2017@gmail.com
			
		</div>
	
	</div>

	
</body>
</html>