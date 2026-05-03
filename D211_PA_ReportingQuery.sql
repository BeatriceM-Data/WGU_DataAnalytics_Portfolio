SELECT 
cu.customer_id, 
cu.income,
cu.marital, 
cu.churn, 
cu.gender, 
(cu.tenure* cu.monthly_charge) AS SalesRevenue,
cu.monthly_charge, 
cu.bandwidth_gp_year,
cu.outage_sec_week, 
cu.email, 
cu.contacts, 
cu.yearly_equip_failure, 
cu.techie,
co.duration AS Contract_duration,
lo.city,
lo.state,
lo.county,
pa.payment_type
FROM public.customer cu
LEFT JOIN contract co ON cu.contract_id=co.contract_id
LEFT JOIN location lo ON cu.location_id=lo.location_id
LEFT JOIN payment pa ON cu.payment_id=pa.payment_id;
	
	
	