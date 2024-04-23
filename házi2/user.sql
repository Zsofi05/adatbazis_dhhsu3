CREATE user zsofi_proba without login
grant SELECT ON Foglalas4 to zsofi_proba
execute As user = 'zsofi_proba'
SELECT * FROM Foglalas4
revert
SELECT * FROM Foglalas4