SELECT
	user_name AS 'usuario',
    IF(YEAR(MAX(history.time_stamp)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
    FROM SpotifyClone.users AS users
    
    INNER JOIN SpotifyClone.history AS history
    ON history.user_id = users.user_id
    
    GROUP BY users.user_name
    ORDER BY users.user_name
    ;
