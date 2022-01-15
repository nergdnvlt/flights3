publish:
	rover subgraph publish service:My-Graph-7-tkuojs:BEXqvDTKmjc8Q8SaZRa28A \
		--name flights --routing-url https://flights3-t4modcxifa-uc.a.run.app

check:
	rover subgraph check My-Graph-7-tkuojs \
	--schema=flights.graphql \
	--name=flights --validation-period=2w


