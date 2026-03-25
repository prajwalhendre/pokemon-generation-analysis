with type_counts as (
	select gen, type, count(*) as type_count
	from (
		select gen, "Type 1" as type
		from pokemon
		where "Type 1" != 'N/a'
		UNION ALL
		select gen, "Type 2" as type
		from pokemon
		where "Type 2" != 'N/a')
	group by gen, type
	order by gen, type_count desc
),

total_counts as (
	select gen, count(*) as total_count_per_gen
	from pokemon
	group by gen
)
select tc.gen, tc.type, round((cast(type_count as float)/total_count_per_gen)*100) as type_ratio
from type_counts tc
join total_counts tot on tc.gen = tot.gen
order by tc.gen, type_ratio desc;