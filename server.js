'use strict';

const Hapi = require('hapi');

module.exports = function (callback) {

  const server = new Hapi.Server();
  const PORT = process.env.PORT || 3000;

  // Create a connection
  server.connection({ port: PORT });

  // Register plugins
  server.register([
    require('blipp'),
    require('inert'),
    require('vision')
  ],
  (err) => {
    if (err) {
      throw err;
    }

    // Configure Vision
    // ----------------
    // - use handlebars as templating engine.
    // - views under /views
    // - use layouts, find them in views/layout
    // - use partials, find them in  views/partials
    server.views({
      engines: {
        hbs: require('handlebars')
      },
      relativeTo: __dirname,
      path: './views',
      layoutPath: './views/layout',
      layout: true,
      partialsPath: './views/partials',
      // helpersPath: './views/helpers',
      isCached: false // TODO: develpment only, change for production.
    });

    // Load routes
    server.route(require('./routes'));

    callback(null, server);
  });
};
