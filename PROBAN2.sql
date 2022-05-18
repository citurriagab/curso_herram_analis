use alfred

-- parte I: Alimentación

-- Alimento por cada animal según su nombre particular
select a.Name as nombre_particular, f.FoodType as alimento
from alfred.ANIMAL a
left join alfred.FEEDING f on f.species = a.Species;

-- Cantidad de animales según su clase e inversión de alimentos por clases (identif mayor y menor)
select a.class as clase, count(*) as cant_animales, sum(f.FoodPrice) as invers_alimento
from alfred.ANIMAL a
left join alfred.FEEDING f on f.Species = a.Species 
group by a.class
order by sum(f.FoodPrice) desc;


-- Personas que alimentan a animales (nombre persona + tipo de alimento)
select e.EmployeeFullName as nombre_empleado, z2.Skill as habilidad
from alfred.EMPLOYEE e 
left join alfred.ZOOKEEPER z on z.ZEmpID = e.EmployeeID 
left JOIN alfred.ZSKILLS z2 on z2.KSkillID = z.KeeperID 
where upper(skill) like '%FEED%';

-- determine cuántos tipos de alimentos se tienen registrados
select f.FoodType 
from alfred.FEEDING f 
group by f.FoodType;