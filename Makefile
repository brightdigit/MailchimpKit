# Phony targets declaration for targets that don't represent files
.PHONY: openapi-spec openapi-types
export MINT_PATH="$PWD/.mint"
MINT_ARGS=-n -m Mintfile --silent
MINT_RUN=MINT_PATH="$(PWD)/.mint" /opt/homebrew/bin/mint run ${MINT_ARGS}

Specs/marketing-3.0.yaml: 
	mkdir -p Specs
	curl https://raw.githubusercontent.com/APIs-guru/openapi-directory/refs/heads/main/APIs/mailchimp.com/3.0.55/openapi.yaml > Specs/marketing-3.0.yaml
	
openapi-spec: Specs/marketing-3.0.yaml
	
openapi-types: openapi-spec
	mkdir -p Sources/MailchimpOpenAPITypes
	${MINT_RUN} swift-openapi-generator generate --output-directory Sources/MailchimpOpenAPITypes --access-modifier public --mode types Specs/marketing-3.0.yaml