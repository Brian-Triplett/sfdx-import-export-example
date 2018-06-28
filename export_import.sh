#!/bin/bash

# Query using the query in the 'soql_query' file and put results in 'export' directory
sfdx force:data:tree:export --query soql_query --outputdir data_export --plan --prefix vandelay

# create the import scratch org
sfdx force:org:create -a import_org -s -f dev-scratch-def.json

# import the data
sfdx force:data:tree:import --plan data_export/vandelay-Account-Contact-plan.json -u import_org