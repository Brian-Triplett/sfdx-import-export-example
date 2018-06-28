#!/bin/bash

# create scratch org
sfdx force:org:create -a export_org -s -f dev-scratch-def.json

# Add some accounts and contacts to the org
sfdx force:apex:execute -u export_org -f account_contact.apex