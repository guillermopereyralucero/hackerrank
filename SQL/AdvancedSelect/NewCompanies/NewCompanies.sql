SELECT 
    C.company_code, 
    C.founder AS founder_name,
    COUNT(DISTINCT LM.lead_manager_code) AS total_lead_manager,
    COUNT(DISTINCT SM.senior_manager_code) AS total_senior_manager,
    COUNT(DISTINCT M.manager_code) AS total_manager,
    COUNT(DISTINCT E.employee_code) AS total_employees
FROM 
    company C
LEFT JOIN 
    lead_manager LM ON C.company_code = LM.company_code
LEFT JOIN 
    senior_manager SM ON LM.lead_manager_code = SM.lead_manager_code
LEFT JOIN 
    manager M ON SM.senior_manager_code = M.senior_manager_code
LEFT JOIN 
    employee E ON M.manager_code = E.manager_code AND E.company_code = C.company_code
GROUP BY 
    C.company_code, C.founder
ORDER BY 
    C.company_code;
