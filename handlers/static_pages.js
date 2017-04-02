'use strict';

// DATA =======================================================================
const team_members = [
  {
    first_name: 'Rudy',
    last_name: 'Ferraz',
    position: 'Founder / CEO',
    picture_url: 'img/team/RudyFerraz.png',
    social_links: {
      twitter: 'https://twitter.com/onecarpayment',
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
    picture_url: 'img/team/FrancesFerraz.png',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  },
  {
    first_name: 'Damian',
    last_name: 'Perez',
    position: 'Senior Software Developer',
    picture_url: 'img/team/Damian.jpg',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  },
  {
    first_name: 'Ronald',
    last_name: 'Rodriguez',
    position: 'Software Developer',
    picture_url: 'img/team/Ronald.jpg',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  },
  {
    first_name: 'Danni',
    last_name: 'Turner',
    position: 'Junior Marketing Associate',
    picture_url: 'img/team/Danni.jpg',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  },
  {
    first_name: 'Benjamin',
    last_name: 'Jerew',
    position: 'Senior Technical Writer',
    picture_url: 'img/team/Benjamin.jpg',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  },
  {
    first_name: 'Michael',
    last_name: 'Pistell',
    position: 'Senior Marketing Director',
    picture_url: 'img/team/MichaelPistell.jpg',
    social_links: {
      twitter: false,
      linkedin: false,
      vimeo: false,
      instagram: false
    }
  }
  // ,{
  //   first_name: 'Keri-Lynn',
  //   last_name: 'Mitoff',
  //   position: 'Senior UI/UX Designer',
  //   picture_url: 'img/team/Keri-Lynn.jpg',
  //   social_links: {
  //     twitter: false,
  //     linkedin: false,
  //     vimeo: false,
  //     instagram: false
  //   }
  // }
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
