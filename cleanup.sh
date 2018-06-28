#!/bin/bash

rm -rf data_export
rm apex.log

# Delete the orgs used for import/export
sfdx force:org:delete -p -u import_org
sfdx force:org:delete -p -u export_org