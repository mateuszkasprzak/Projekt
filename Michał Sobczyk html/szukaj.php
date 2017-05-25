<!doctype html>
<html>
  <head>
    <title>Wyszukiwanie prowadzacych w bazie prowadzacy</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Wyszukiwanie prowadzacych w bazie prowadzacy</h1>
    <form action="wyniki.php" method="post">
      Wyszukaj wedlug:
      <select name="metoda">
       <option value="nazwisko" />Nazwisko
       <option value="imie" />Imie
       <option value="tytul" />Tytul
      </select>
      <br /><br />
      Szukane wyrazenie:
      <input type="text" name="wyrazenie" />
      <input type="submit" name="wyszukaj" />
    </form>
  </body>
</html>