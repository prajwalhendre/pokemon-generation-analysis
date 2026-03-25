select 
	gen, 
		avg(HP) as avg_hp, 
		avg(Attack) as avg_attack, 
		avg(Defense) as avg_defense, 
		avg("Sp. Attack") as avg_sp_atk, 
		avg("Sp. Defense") as avg_sp_def, 
		avg(Speed) as avg_speed, 
		avg(Base_Stats) as avg_base_stats
from pokemon
where Is_Legendary = 0 and Is_Mythical = 0 and Is_Ultra_Beast = 0
group by gen;
