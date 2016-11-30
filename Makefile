BAREBONES_SERVICES := helios charon vulgate lucinda

# Barebones is all daemons that do not populate data.
barebones-pull:
	docker-compose pull $(BAREBONES_SERVICES)

barebones-up:
	docker-compose up -d $(BAREBONES_SERVICES)

bacchus-rediscli:
	docker run -it --net emilia_default --link emilia_bacchus-queue_1:redis --rm redis redis-cli -h redis -p 6379

lucinda-rediscli:
	docker run -it --net emilia_default --link emilia_lucinda-cache_1:redis --rm redis redis-cli -h redis -p 6379
