**# Construct yearly income

	local min_wage 	 12 // Minimum wage in Illinois for 2022. Source: https://www2.illinois.gov/idol/Laws-Rules/FLS/Pages/minimum-wage-law.aspx
	local work_hours 40

	income = weeks_worked * `weekly_work_hours' * `hourly_wage'