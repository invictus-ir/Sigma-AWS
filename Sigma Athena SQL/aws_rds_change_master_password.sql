SELECT * FROM cloudtrail_logs WHERE (eventSource = 'rds.amazonaws.com' AND responseElements.pendingModifiedValues.masterUserPassword LIKE '%%%' ESCAPE '\' AND eventName = 'ModifyDBInstance')