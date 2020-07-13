#Part 1

#Job table columns/types: Id (int, primary key), Name (longtext or varchar), EmployerId(int, foreign key)

#Part 2

SELECT Name 
	FROM employers
	WHERE (location LIKE 'St Louis');

#Part 3
#It's actually possible to accomplish this task without using the IS NOT NULL clause:

SELECT Name, Description
	FROM skills AS a
		LEFT JOIN jobskills AS b
        ON a.Id = b.SkillId
	GROUP BY Name
	ORDER BY Name ASC;