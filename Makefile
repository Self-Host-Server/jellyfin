.PHONY: node

# Load .env file
ifneq (,$(wildcard .env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

node:
	conda run -n jellyfin nodeenv -p