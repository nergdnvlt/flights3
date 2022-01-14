publish:
	rover subgraph publish service:My-Graph-9-gdvpzp:VUJNRzuysYfkqsR4uCDoKA \
		--name flights --routing-url https://flights-subgraph-t4modcxifa-uc.a.run.app

check:
	rover subgraph check My-Graph-9-gdvpzp \
	--schema=flights.graphql \
	--name=flights --validation-period=2w


