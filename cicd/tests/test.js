
const request = require('supertest');
const app = require('../app');

describe('GET /test', () => {
  it('should return status 200', (done) => {
    request(app).get('/test').expect(200, done);
  });
});
