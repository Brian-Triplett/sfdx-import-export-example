#!/bin/bash

# Delete the orgs used for import/export
sfdx force:org:delete -p -u import
sfdx force:org:delete -p -u export