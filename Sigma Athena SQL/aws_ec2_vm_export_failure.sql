SELECT * FROM cloudtrail_logs WHERE ((eventName = 'CreateInstanceExportTask' AND eventSource = 'ec2.amazonaws.com') AND NOT ((errorMessage LIKE '%%%' ESCAPE '\') OR (errorCode LIKE '%%%' ESCAPE '\') OR (responseElements LIKE '%Failure%' ESCAPE '\')))