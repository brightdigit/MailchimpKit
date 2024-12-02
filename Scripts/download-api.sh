#!/bin/bash

ModelConflicts=(Automations BatchWebhooks FileManager CampaignFolders Campaigns ConnectedSites TemplateFolders Templates VerifiedDomains)

curl -L -o OpenAPI/marketing.json https://github.com/mailchimp/mailchimp-client-lib-codegen/raw/main/spec/marketing.json
openapi-generator generate -i OpenAPI/marketing.json -g openapi --skip-validate-spec -o OpenAPI
swaggen generate OpenAPI/openapi.json --template Templates/Swift --option name:Spinetail --clean all 

for NS in "${ModelConflicts[@]}"
do
  find generated -type f -name "*.swift" -exec sed -i '' "s/[[:space:]]${NS}\([^[:alpha:]]\)/ ${NS}Model\1/g" {} +
  find generated -type f -name "*.swift" -exec sed -i '' "s/[[:space:]]${NS}^/ ${NS}Model/g" {} +
  find generated -type f -name "*.swift" -exec sed -i '' "s/enum ${NS}Model/enum ${NS}/g" {} +       
  find generated -type f -name "*.swift" -exec sed -i '' "s/extension ${NS}Model/extension ${NS}/g" {} +
done

find generated -type f -name "*.swift" -exec sed -i '' "s/\Timestamp?.encode()/.value/g" {} +
find generated -type f -name "*.swift" -exec sed -i '' "s/\Time?.encode()/.value/g" {} +
find generated -type f -name "*.swift" -exec sed -i '' "s/\?.encode()//g" {} +
find generated -type f -name "*.swift" -exec sed -i '' "s/DateTime\?/MailchimpOptionalDate/g" {} +
#[String: [String: String]]
