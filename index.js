'use strict';

// Get the server and start it.

const Server = require('./server');

Server( (err, server) => {

  if (err) {
    throw err;
  }

  // Start the server.
  server.start( (err) => {

    if (err) {
      throw err;
    }

    console.log(`Server listening at ${server.info.uri}`);
  });

});
