var koa   = require('koa'),
    app   = module.exports = koa(),
    route = require('koa-route'),
    get   = route.get;

app.use(get('/', function *() {
  this.body = ""
}));

if (!module.parent) {
  app.listen(3000);
}
