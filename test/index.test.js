// test/index.test.js

const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../server');
const expect = chai.expect;

chai.use(chaiHttp);

describe('Express.js App', () => {
  describe('GET /', () => {
    it('should return "Hello, DevOps!"', (done) => {
      chai.request(app)
        .get('/')
        .end((err, res) => {
          expect(res).to.have.status(200);
          expect(res.text).to.equal('Hello, DevOps!');
          done();
        });
    });
  });
});