SELECT * FROM cloudtrail_logs WHERE (eventSource = 'cloudtrail.amazonaws.com' AND eventName IN ('StopLogging', 'UpdateTrail', 'DeleteTrail'))