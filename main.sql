SELECT nomi, narxi, chegirma
FROM mahsulotlar
WHERE narxi BETWEEN 1000000 AND 5000000
  AND chegirma > 10;


SELECT brend,
       COUNT(*) AS mahsulot_soni,
       AVG(narxi) AS ortacha_narx
FROM mahsulotlar
GROUP BY brend;


SELECT nomi, narxi, ombordagi_soni
FROM mahsulotlar
WHERE ombordagi_soni < 100
  AND holati = 'active'
ORDER BY narxi DESC;


SELECT nomi, narxi
FROM mahsulotlar
WHERE kategoriya_id IN (6, 7)
  AND qoshilgan_sana BETWEEN '2024-08-01' AND '2024-08-31';


yakuniy_narx = narx - (narx * chegirma / 100)
SELECT
    nomi,
    narxi,
    chegirma,
    narxi - (narxi * chegirma / 100) AS yakuniy_narx
FROM mahsulotlar
ORDER BY narxi DESC
LIMIT 5;

  
SELECT SUM(ombordagi_soni) AS jami_ombor_soni
FROM mahsulotlar
WHERE rangi = 'Qora'
  AND vazni < 1;


