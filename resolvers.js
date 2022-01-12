const flights = require('./flights.json');

const resolvers = {
    Query: {
        flights: () => flights
    },
};

module.exports = resolvers;