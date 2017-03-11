'use strict';

const nodemailer = require('nodemailer');

// send mail with previously defined transporter
exports.sendMail = function(request, reply) {
  var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'customer.support@bokskar.com',
      pass: 'w3wereB0XK@r' //>{m|l1|1QsI
    }
  });

  var mailOptions = {
    from: 'customer.support@bokskar.com', // sender address
    to: 'damian.perez@bokskar.com', // comma-separated list of receivers
    subject: 'Welcome to One-Car-Payment', // subject line
    text: 'This is a welcome message to our app'//, plain text body first
    // html: '<b>This is a welcome message to our app</b>' // will test html body later
  };

  transporter.sendMail(mailOptions, function(error, info) {
    if (error) {
      return console.log(error);
    }
    console.log('Message %s sent: %s', info.messageId, info.response);
  });

  reply.view('login', {
    sent: true
  });
};
