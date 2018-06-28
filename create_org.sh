#!/bin/bash

# create scratch org
sfdx force:org:create -a export -s -f dev-scratch-def.json

# open the org and add config
sfdx force:org:open                                           

echo 'Now add some Accounts and Contacts!'