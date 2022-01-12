const { ApolloServer, gql } = require('apollo-server');
const { buildSubgraphSchema } = require("@apollo/federation");
const fs = require('fs'); 
const resolvers = require('./resolvers');


//figure out why this line needs to be here--why are we having to specify how we represent text? otherwise, here ApolloServer needs your schema
const typeDefs = gql(fs.readFileSync('flights.graphql', 'utf8'))
const flights = require('./flights.json');
const port = process.env.PORT // || 4001

//set up Apollo Server. it will also need your resolvers
const server = new ApolloServer({
    schema: buildSubgraphSchema([{ typeDefs, resolvers }]),
});
  
server.listen({ port }).then(({ url }) => {
    console.log(`Flights service ready at ${url}`);
});
  