'use strict';

// DATA =======================================================================
const team_members = [
  {
    first_name: 'Rudy',
    last_name: 'Ferraz',
    position: 'Founder / CEO',
    picture_url: 'img/team/Rudy.png',
    social_links: {
      twitter: '#',
      dribble: '#',
      vimeo: '#',
      instagram: '#',
      linkedin: 'https://www.linkedin.com/in/rudyferraz'
    }
  },
  {
    first_name: 'Frances',
    last_name: 'Ferraz',
    position: 'Founder / CFO',
    picture_url: 'img/team/Frances.png',
    social_links: {
      twitter: '#',
      linkedin: 'https://www.linkedin.com/in/frances-ferraz-197a1a17/',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Matthew',
    last_name: 'Stahlmann',
    position: 'Founder / CTO',
    picture_url: 'img/team/Matthew.png',
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
    position: 'Senior Software Developer',
    picture_url: 'img/team/Damian.jpg',
    social_links: {
      twitter: 'https://twitter.com/compscidamian',
      vimeo: 'https://vimeo.com/cyberdante',
      instagram: 'https://www.instagram.com/compscidamian/',
      linkedin: 'https://www.linkedin.com/in/perezdamian'
    }
  },
  {
    first_name: 'Todd',
    last_name: 'Bluhm',
    position: 'Software Developer',
    picture_url: 'img/team/Todd.jpg',
    social_links: {
      twitter: 'https://twitter.com/toddbluhm',
      linkedin: 'https://www.linkedin.com/in/toddbluhm',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Ronald',
    last_name: 'Rodriguez',
    position: 'Junior Software Developer',
    picture_url: 'img/team/Ronald.jpg',
    social_links: {
      twitter: 'http://www.twitter.com/ronrsuarez',
      dribble: '#',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Chris',
    last_name: 'Long',
    position: 'Junior Marketing Associate',
    picture_url: 'img/team/ChrisLong.jpg',
    social_links: {
      twitter: 'https://twitter.com/TheClassicLong',
      linkedin: 'https://www.linkedin.com/in/christopher-long-0223126a',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Danni',
    last_name: 'Turner',
    position: 'Junior Marketing Associate',
    picture_url: 'img/team/Danni.jpg',
    social_links: {
      twitter: '#',
      dribble: '#',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Benjamin',
    last_name: 'Jerew',
    position: 'Senior Technical Writer',
    picture_url: 'img/team/Benjamin.jpg',
    social_links: {
      twitter: 'https://twitter.com/LoneWolffe',
      linkedin: 'https://www.linkedin.com/in/jerewindependentresearch',
      vimeo: '#',
      instagram: '#'
    }
  },
  {
    first_name: 'Keri-Lynn',
    last_name: 'Mitoff',
    position: 'Senior UI/UX Designer',
    picture_url: 'img/team/Keri-Lynn.jpg',
    social_links: {
      twitter: 'https://twitter.com/klm001',
      dribble: 'https://dribbble.com/klm001',
      linkedin: 'https://www.linkedin.com/in/keri-lynn-mitoff-2bb39a2',
      instagram: 'https://www.instagram.com/klm_001'
    }
  }
];

// HANDLERS ===================================================================
exports.home = function (request, reply) {

  reply.view('home', {
    team_members: team_members,
    what: true,
    about: true,
    how: true,
    team: true,
    calculator: true,
    invest: true,
    contact: true
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

exports.blogDetail = function (request, reply) {

  var post_id = request.params.post_id ? encodeURIComponent(request.params.post_id) : 'blog_detail';

  //search for post_name using post_id and serve reply.view('posts/' + post_name)

  reply.view('posts/' + post_id, {});

};
