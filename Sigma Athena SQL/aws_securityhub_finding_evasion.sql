SELECT * FROM cloudtrail_logs WHERE (eventSource = 'securityhub.amazonaws.com' AND eventName IN ('BatchUpdateFindings', 'DeleteInsight', 'UpdateFindings', 'UpdateInsight'))