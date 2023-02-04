CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sigal`.`view_avg` AS
    SELECT 
        `sigal`.`highschool`.`grade_avg` AS `grade_avg`,
        `sigal`.`highschool`.`id` AS `id`
    FROM
        `sigal`.`highschool`