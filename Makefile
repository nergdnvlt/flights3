publish:
	rover subgraph publish GraphDemo-p7a19h@current --schema ./flights.graphql \
		--name users --routing-url https://users-subgraph-waaq4qt37q-uc.a.run.app

publish-staging:
	rover subgraph publish GraphDemo-p7a19h@current --schema ./flights.graphql \
		--name flights --routing-url https://flights-subgraph-t4modcxifa-uc.a.run.app

check:
	rover subgraph check GraphDemo-p7a19h \
	--schema=flights.graphql \
	--name=users --validation-period=2w


