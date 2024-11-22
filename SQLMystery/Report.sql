SELECT * FROM crime_scene_report 
 WHERE date = '20180115' 
AND city = 'SQL City' 
AND type = 'murder'
              
SELECT * FROM interview 
 WHERE person_id = '14887'

 SELECT * FROM get_fit_now_member 
JOIN get_fit_now_check_in ON (membership_id = id)
 WHERE membership_status = 'gold' AND id LIKE '48Z%' AND check_in_date = '20180109'
              
              SELECT * FROM get_fit_now_member 
JOIN get_fit_now_check_in ON (membership_id = get_fit_now_member.id)
JOIN person ON (person_id = person.id)
JOIN drivers_license ON (license_id = drivers_license.id)
 WHERE membership_status = 'gold' 
 AND membership_id LIKE '48Z%' 
 AND check_in_date = '20180109'
 AND plate_number LIKE '%H42W%'
              
-- Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".

-- 16371	Annabel Miller	490173	103	Franklin Ave	318771143
-- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

-- 14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949
-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".