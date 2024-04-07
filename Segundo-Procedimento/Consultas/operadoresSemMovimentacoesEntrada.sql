SELECT Usuario.*
FROM Usuario
LEFT JOIN Movimento ON Usuario.ID_Usuario = Movimento.ID_Usuario AND Movimento.TipoMovimento = 'C'
WHERE Movimento.ID_Movimento IS NULL;