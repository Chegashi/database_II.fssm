-- Exercice 1

SELECT nomfou 
FROM FOURNISSEUR F
WHERE 
	(	
	SELECT COUNT(*)
	FROM LIVRAISON L
	WHERE L.numfou = F.numfou
	)
	>= 2;	

-- Exercice 2

CREATE VIEW LIVRAISONS_PAR_ANNEE AS
SELECT ANNEE, COUNT(*) AS NB_LIVRAISONS
FROM 
	(
	SELECT to_char(dateli,'yyyy') AS ANNEE, numfou, numli
	FROM LIVRAISON
	)
GROUP BY ANNEE;

SELECT ANNEE 
FROM LIVRAISONS_PAR_ANNEE
WHERE NB_LIVRAISONS = 
	(
	SELECT MAX(NB_LIVRAISONS)
	FROM LIVRAISONS_PAR_ANNEE
	);

-- Exercice 3

CREATE VIEW FOU_KI_ONT_TOU_LIVRE AS
SELECT numfou
FROM FOURNISSEUR F
WHERE 
	(SELECT COUNT(*)
	FROM PROPOSER PR
	WHERE PR.numfou =  F.numfou)
	= 
	(SELECT COUNT(DISTINCT numprod)
	FROM DETAILLIVRAISON D
	WHERE D.numfou = F.numfou
	);

CREATE VIEW DERNIERE_LI_PAR_FOU AS
SELECT numfou, MAX(dateli) AS DATE_MAX
FROM LIVRAISON
GROUP BY numfou;

SELECT nomfou 
FROM FOURNISSEUR
WHERE numfou IN
	(
	SELECT F.numfou 
	FROM FOU_KI_ONT_TOU_LIVRE F, DERNIERE_LI_PAR_FOU D
	WHERE F.numfou = D.numfou
	AND DATE_MAX = 
		(
		SELECT MAX(DATE_MAX) 
		FROM FOU_KI_ONT_TOU_LIVRE F, DERNIERE_LI_PAR_FOU D
		WHERE F.numfou = D.numfou
		)
	);
