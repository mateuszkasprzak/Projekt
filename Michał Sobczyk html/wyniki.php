<!doctype html>
<html>
  <head>
    <title>Wyniki wyszukiwania prowadzacych w bazie prowadzacy</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Wyniki wyszukiwania prowadzacych w bazie prowadzacy</h1>
    <?php
      $metoda = $_POST['metoda'];
      $wyrazenie = $_POST['wyrazenie'];
      $wyrazenie = trim($wyrazenie);
      if (!$metoda || !$wyrazenie)
      {
        echo 'Brak parametrów wyszukiwania, wróæ do poprzednej strony i spóbuj ponownie!';
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
        echo 'Po³¹czenie z baz¹ nie powiod³o siê. Spóbuj ponownie';
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
  </body>
</html>