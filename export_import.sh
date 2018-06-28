#!/bin/bash

# Query using the query in the 'soql_query' file and put results in 'export' directory
sfdx force:data:tree:export --query soql_query --outputdir export --plan --prefix vandelay

# create the import scratch org
sfdx force:org:create -a import -s -f dev-scratch-def.json

# import the data
sfdx force:data:tree:import --plan export/vandelay-Account-Contact-plan.json -u import