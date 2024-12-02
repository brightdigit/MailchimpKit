# Phony targets declaration for targets that don't represent files
.PHONY: openapi-spec openapi-types
export MINT_PATH="$PWD/.mint"
MINT_ARGS=-n -m Mintfile --silent
MINT_RUN=MINT_PATH="$(PWD)/.mint" /opt/homebrew/bin/mint run ${MINT_ARGS}

Specs/Swagger-3.0.json: 
	mkdir -p Specs
	curl https://api.mailchimp.com/schema/3.0/Swagger.json > Specs/Swagger-3.0.json
	
openapi-spec: Specs/Swagger-3.0.json
	
openapi-types: openapi-spec
	${MINT_RUN} swift-openapi-generator generate --output-directory Sources/MailchimpOpenAPITypes --access-modifier public --mode types Specs/Marketing-3.0.json