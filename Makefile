GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
AWS_ECR_URL:=""

.PHONY: setup
.DEFAULT_GOAL := setup

setup:
	@printf "\n\n${YELLOW}Starting RabbitMQ cluster${NC}\n"
	@./tools/build && ./tools/start

dockerize:
	@docker build . -t fierycod/codcheck-rabbitmq
	@docker tag fierycod/codcheck-rabbitmq:latest $(AWS_ECR_URL)
	@docker push $(AWS_ECR_URL)
