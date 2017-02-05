'use strict';

// DATA =======================================================================
const team_members = [
  {
    first_name: 'Ronald',
    last_name: 'Rodriguez',
    position: 'Jr Developer',
    picture_url: 'img/avatar-team-1.jpg',
    social_links: {
      twitter: 'http://www.twitter.com/ronrsuarez',
      dribble: '#',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Damian',
    last_name: 'Perez',
    position: 'Sr Dev',
    picture_url: 'img/avatar-team-1.jpg',
    social_links: {
      twitter: '#',
      dribble: '#',
      vimeo: '#',
      instagram: '#'
    }
  }
];

// HANDLERS ===================================================================
exports.home = function (request, reply) {

  reply.view('home', {
    team_members: team_members
  });

};

exports.login = function (request, reply) {

  reply.view('login', {});

};

exports.signup = function (request, reply) {

  reply.view('signup', {});

};

exports.blog = function (request, reply) {

  reply.view('blog', {});

};
