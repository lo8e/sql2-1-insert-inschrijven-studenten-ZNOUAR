SELECT studenten.ov_nummer,studenten.voornaam,studenten.tussenvoegsel,studenten.achternaam,
klassen_studenten.klas_code,klassen.cohort,docenten.voorletters,docenten.tussenvoegsel,docenten.achternaam
FROM studenten
LEFT JOIN klassen_studenten ON klassen_studenten.klas_code = studenten.ov_nummer
LEFT JOIN klassen ON klassen.klas_code = klassen_studenten.klas_code
LEFT JOIN docenten ON docenten.docent_code = klassen.slb_code
ORDER BY klassen_studenten.klas_code AND studenten.achternaam;
