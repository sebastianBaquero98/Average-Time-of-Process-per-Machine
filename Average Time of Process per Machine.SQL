SELECT machine_id, ROUND(AVG(b.timestamp - a.timestamp),3) as processing_time
FROM Activity as a JOIN Activity as b USING(machine_id,process_id)
WHERE a.activity_type <> b.activity_type and a.activity_type = "start"
GROUP BY machine_id
