SELECT p.patient_id
	, p.population
	, p.age
	, p.hignblood
	, p.stroke
	, p.initial_days
	, p.readmis
	, s.services
	, l.county
	, l.state
FROM patient p
INNER JOIN location l 
	on p.location_id = l.location_id
INNER JOIN complication c
	ON p.compl_id = c.complication_id
INNER JOIN (SELECT services, patient_id from servicesaddon) as s
	ON p.patient_id = s.patient_id
