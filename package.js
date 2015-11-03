Package.describe({
  name: 'yosbd:maxmind',
  version: '0.0.1',
  summary: 'MaxMind API package',
  git: 'https://github.com/YosBD/maxmind',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.use('coffeescript@1.0.0');
  api.use('http@1.0.0');
  api.addFiles(['conf.coffee','maxmind.coffee'], 'server');
});
