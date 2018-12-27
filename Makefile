GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

.PHONY: setup
.DEFAULT_GOAL := setup

setup:
	@printf "\n\n${YELLOW}Starting RabbitMQ cluster${NC}\n"
	@./tools/build && ./tools/start
