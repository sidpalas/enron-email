NEO4J_VERSION := 3.5
NEO4J_DATA_VOLUME := /Users/cpalas/Documents/Programming/enron-email/neo4j/data
NEO4J_IMPORT_VOLUME := /Users/cpalas/Documents/Programming/enron-email/neo4j/import

.PHONY: docker-pull-neo4j
docker-pull-neo4j:
	docker pull neo4j:$(NEO4J_VERSION)

.PHONY: docker-run-neo4j
docker-run-neo4j:
	docker run \
	    --publish=7474:7474 --publish=7687:7687 \
	    --volume=$(NEO4J_DATA_VOLUME):/data \
			--volume=$(NEO4J_IMPORT_VOLUME):/import \
	    neo4j:$(NEO4J_VERSION)

# username: neo4j, I set password to 'admin' on first run.
