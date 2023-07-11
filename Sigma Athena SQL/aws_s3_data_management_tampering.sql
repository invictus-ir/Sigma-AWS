SELECT * FROM cloudtrail_logs WHERE (eventSource = 's3.amazonaws.com' AND eventName IN ('PutBucketLogging', 'PutBucketWebsite', 'PutEncryptionConfiguration', 'PutLifecycleConfiguration', 'PutReplicationConfiguration', 'ReplicateObject', 'RestoreObject'))