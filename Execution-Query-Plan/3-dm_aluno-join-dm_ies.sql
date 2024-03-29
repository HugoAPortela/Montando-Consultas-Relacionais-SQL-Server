/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DM_ALUNO.CO_IES, DM_ALUNO.NO_IES, DM_ALUNO.CO_CATEGORIA_ADMINISTRATIVA, DM_ALUNO.DS_CATEGORIA_ADMINISTRATIVA, DM_ALUNO.CO_ORGANIZACAO_ACADEMICA, DM_ALUNO.DS_ORGANIZACAO_ACADEMICA, 
                  DM_ALUNO.CO_CURSO, DM_ALUNO.NO_CURSO, DM_ALUNO.CO_CURSO_POLO, DM_ALUNO.CO_TURNO_ALUNO, DM_ALUNO.DS_TURNO_ALUNO, DM_ALUNO.CO_GRAU_ACADEMICO, DM_ALUNO.DS_GRAU_ACADEMICO, 
                  DM_ALUNO.CO_MODALIDADE_ENSINO, DM_ALUNO.CO_NIVEL_ACADEMICO, DM_ALUNO.DS_MODALIDADE_ENSINO, DM_ALUNO.DS_NIVEL_ACADEMICO, DM_ALUNO.CO_OCDE, DM_ALUNO.NO_OCDE, 
                  DM_ALUNO.CO_OCDE_AREA_GERAL, DM_ALUNO.NO_OCDE_AREA_GERAL, DM_ALUNO.CO_OCDE_AREA_ESPECIFICA, DM_ALUNO.NO_OCDE_AREA_ESPECIFICA, DM_ALUNO.CO_OCDE_AREA_DETALHADA, 
                  DM_ALUNO.NO_OCDE_AREA_DETALHADA, DM_ALUNO.CO_ALUNO_CURSO, DM_ALUNO.CO_ALUNO_CURSO_ORIGEM, DM_ALUNO.CO_ALUNO, DM_IES.CO_UF_IES, DM_IES.SGL_UF_IES, DM_IES.NO_REGIAO_IES, 
                  DM_IES.CO_MUNICIPIO_IES, DM_IES.NO_MUNICIPIO_IES
FROM     DM_ALUNO INNER JOIN
                  DM_IES ON DM_ALUNO.CO_IES = DM_IES.CO_IES

WHERE SGL_UF_IES = 'DF' OR SGL_UF_IES = 'SP'