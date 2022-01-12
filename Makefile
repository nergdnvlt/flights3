publish:
	rover subgraph publish GraphDemo-p7a19h@current --schema ./flights.graphql \
		--name flights --routing-url https://flights-subgraph-t4modcxifa-uc.a.run.app

check:
	rover subgraph check GraphDemo-p7a19h \
	--schema=flights.graphql \
	--name=flights --validation-period=2w


