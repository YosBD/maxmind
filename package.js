Package.describe({
  name: 'mjmasn:maxmind',
  version: '0.3.0',
  summary: 'MaxMind API package',
  git: 'https://github.com/mjmasn/maxmind',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.use('coffeescript@1.0.0');
  api.use('http@1.0.0');
  api.addFiles(['conf.coffee','maxmind.coffee'], 'server');
});
