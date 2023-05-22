#!/bin/bash

set -o verbose
ModelConflicts=(Automations BatchWebhooks FileManager CampaignFolders Campaigns ConnectedSites TemplateFolders Templates VerifiedDomains)

#curl -o OpenAPI/marketing.json https://github.com/mailchimp/mailchimp-client-lib-codegen/raw/main/spec/marketing.json
#openapi-generator generate -i OpenAPI/marketing.json -g openapi --skip-validate-spec -o OpenAPI
swaggen generate OpenAPI/openapi.json --template Templates/Swift --option name:Spinetail --clean all 

for NS in "${ModelConflicts[@]}"
do
  find generated -type f -name "*.swift" -exec sed -i '' "s/[[:space:]]${NS}\([^[:alpha:]]\)/ ${NS}Model\1/g" {} +
  find generated -type f -name "*.swift" -exec sed -i '' "s/enum ${NS}Model/enum ${NS}/g" {} +       
  find generated -type f -name "*.swift" -exec sed -i '' "s/extension ${NS}Model/extension ${NS}/g" {} +
done
# find . -type f -name "*.swift" -exec sed -i '' "s/[[:space:]]BatchWebhooks\([^[:alpha:]]\)/ BatchWebhooksModel\1/g" {} 
# find . -type f -name "*.swift" -exec sed -i '' "s/enum BatchWebhooksModel/enum BatchWebhooks/g" {} +       
# find . -type f -name "*.swift" -exec sed -i '' "s/extension BatchWebhooksModel/extension BatchWebhooks/g" {} +
