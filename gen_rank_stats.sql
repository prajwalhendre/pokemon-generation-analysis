SELECT
	Name,
	gen,
	Base_Stats,
	rank () over (Partition By gen order by Base_Stats desc) as gen_rank
from 
	pokemon;