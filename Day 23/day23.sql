SELECT gwl1.weight - gwl2.weight AS weight_difference
FROM grinch_weight_log gwl1
JOIN grinch_weight_log gwl2
ON gwl1.log_id = gwl2.log_id + 1;
