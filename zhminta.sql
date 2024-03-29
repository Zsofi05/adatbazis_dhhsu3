SELECT szh.TIPUS, YEAR(f.METTOL) AS 'Év', MONTH(f.METTOL) AS 'Hónap', COUNT(*)
 FROM Foglalas f JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID 
                 JOIN Szallashely szh ON sz.SZALLAS_FK=szh.SZALLAS_ID
 

WHERE  DATEDIFF(DAY,METTOL,MEDDIG) >=5 

 GROUP BY szh.TIPUS, YEAR(f.METTOL),  MONTH(f.METTOL)
