app = require('../index.js')

assert  = require('chai').assert
request = require('supertest').agent(app.listen())

suite('Integration')

test('/ returns 200', (done) ->
  request
    .get('/')
    .expect(200, done)
)

test('/page-that-does-not-exist returns 404', (done) ->
  request
    .get('/page-that-does-not-exist')
    .expect(404, done)
)
