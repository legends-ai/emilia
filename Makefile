BAREBONES_SERVICES := charon

# Barebones is all daemons that do not populate data.
barebones-pull:
	docker-compose pull $(BAREBONES_SERVICES)

barebones-up:
	docker-compose up $(BAREBONES_SERVICES)
