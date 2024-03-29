BAREBONES_SERVICES := helios charon vulgate lucinda

# Barebones is all daemons that do not populate data.
barebones-pull:
	docker-compose pull $(BAREBONES_SERVICES)

barebones-up:
	docker-compose up -d $(BAREBONES_SERVICES)

lucinda-rediscli:
	docker run -it --net emilia_default --link emilia_lucinda-cache_1:redis --rm redis redis-cli -h redis -p 6379

nova-rediscli:
	docker run -it --net emilia_default --link emilia_nova-queue_1:redis --rm redis redis-cli -h redis -p 6379

vulgate-rediscli:
	docker run -it --net emilia_default --link emilia_vulgate-cache_1:redis --rm redis redis-cli -h redis -p 6379

cqlsh:
	docker run -ti cassandra:3.4 cqlsh 172.17.0.1 --cqlversion="3.4.2"

cfstats:
	docker-compose exec cassandra nodetool cfstats
