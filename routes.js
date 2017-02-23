'use strict';

const StaticPages = require('./handlers/static_pages');
const StaticAssets = require('./handlers/static_assets');

module.exports = [
  // Static Pages (home, login, signup, blog)
  // ----------------------------------------

  // /
  {
    method: 'GET',
    path: '/',
    handler: StaticPages.home
  },
  {
    method: 'GET',
    path: '/index',
    handler: StaticPages.home
  },
  // // /login
  {
    method: 'GET',
    path: '/login',
    handler: StaticPages.login
  },

  // /signup
  {
    method: 'GET',
    path: '/signup',
    handler: StaticPages.signup
  },

  // /blog
  {
    method: 'GET',
    path: '/blog',
    handler: StaticPages.blog
  },
  // /blog/{post_id}
  {
    method: 'GET',
    path: '/blog/{post_id}',
    handler: StaticPages.blogDetail,
    config: {
        description: 'blog posts',
        notes: 'The post_id parameter defaults to \'blog_detail\' if unspecified',
        tags: ['api', 'blog', 'posts']
    }
  },

  // Static Assets (images/css)
  // --------------------------
  {
    method: 'GET',
    path: '/img/{param*}',
    handler: StaticAssets.serveImages
  },
  {
    method: 'GET',
    path: '/css/{param*}',
    handler: StaticAssets.serveStyles
  },
  {
    method: 'GET',
    path: '/js/{param*}',
    handler: StaticAssets.serveScripts
  },
  {
    method: 'GET',
    path: '/fonts/{param*}',
    handler: StaticAssets.serveFonts
  }
];
