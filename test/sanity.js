'use strict';

const Lab = require('lab');
const lab = exports.lab = Lab.script();

const expect = require('chai').expect;

// BDD aliases
const describe = lab.describe;
const it = lab.test;
const before = lab.before;

let server; // (makes server available in the outer scope)

// Get the server object.
before( (done) => {
  require('../server')( (err, srv) => {
    server = srv; // assign server object to variable in outer scope
    done();
  });
});

// Static pages
// ------------
describe('Static Pages', () => {

  it('should GET /', (done) => {

    server.inject('/', (res) => {
      expect(res.statusCode).to.be.equal(200);
    });

    done();
  });

});
