/* 1. Conhecer os dados, selecionar registros */
select * FROM [padroes]


/* 2. Obter a data do registro anterior, LAG, OVER, PARTITION */
SELECT [C�d_Padr�o], [Data] as data_atual,
        LAG([Data]) OVER (PARTITION BY [C�d_Padr�o] ORDER BY [Data]) as data_anterior
FROM [padroes]


/* 3. Diferen�as entre data, DATEDIFF */
/* data_anterior - data_atual */

SELECT [C�d_Padr�o], [Data] as data_atual,
		DATEDIFF(DAY, 
			LAG([Data]) OVER (PARTITION BY [C�d_Padr�o] ORDER BY [Data]),
			[DATA])
FROM [padroes]

/* 4. Alterar registro se nulo, ISNULL */

SELECT [C�d_Padr�o], [Data] as data_atual,
		  ISNULL(
			DATEDIFF(DAY, 
				LAG([Data]) OVER (PARTITION BY [C�d_Padr�o] ORDER BY [Data]),
				[Data])
           ,0)
FROM [padroes]


