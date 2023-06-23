UPDATE edw.etl.acquisition_configuration
SET active_ind = 1
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','WORKDAY','GIT','NTTA_EDW') 

UPDATE edw.etl.transformation_configuration
SET active_ind = 1
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','GIT')
