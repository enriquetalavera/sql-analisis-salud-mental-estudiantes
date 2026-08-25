-- Analisis de Salud Mental Estudiantes Internacionales
-- Dataset: 286 estudiantes universidad japonesa 2018

-- 1. Vista general
SELECT * FROM students LIMIT 5;

-- 2. Conteo por tipo de estudiante
SELECT inter_dom, COUNT(*) FROM students GROUP BY inter_dom;

-- 3. Consulta principal: impacto de duracion de estancia en salud mental
SELECT
  stay,
  COUNT(*) AS count_int,
  ROUND(AVG(todep), 2) AS average_phq,
  ROUND(AVG(tosc), 2) AS average_scs,
  ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
