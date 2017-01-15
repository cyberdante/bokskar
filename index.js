const Hapi = require('hapi');
const server = new Hapi.Server();
const inert = require('inert');

const blipp = require('blipp');
// const joi = require('joi');

const path = require('path');

const PORT = process.env.PORT || 3000;

server.connection({port: PORT});


server.register(blipp, (err) => {
  if (err) {
    throw err;
  }
});

server.register(inert, (err) => {
  if (err) {
    throw err;
  }
});

server.route({
  method: 'GET',
  path: '/',
  handler: {
    file: 'public/index.html'
  }
  //handler: function (request, reply) {
  //  return reply('Tadaaa!!!\n');
  //}
});

// server.route({
//   method: 'GET',
//   path: '/{param*}',
//   handler: {
//     file: 'public/' + param
//   }
// });

server.route({
  method: 'GET',
  path: '/{param*}',
  handler: {
    directory: {
      path: path.join(__dirname, 'public/'),
      listing: false
    }
  }
});

server.start((err) => {
  if (err) {
    throw err;
  }

  console.log('Listening at', server.info.uri);
});
