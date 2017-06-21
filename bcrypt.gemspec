Gem::Specification.new do |gem|
  gem.name = 'bcrypt'
  gem.version = '3.1.11'

  gem.summary = 'OpenBSD\'s bcrypt() password hashing algorithm.'
  gem.description = <<-EOF
    bcrypt() is a sophisticated and secure hash algorithm designed by The OpenBSD project
    for hashing passwordgem. The bcrypt Ruby gem provides a simple wrapper for safely handling
    passwordgem.
  EOF

  gem.authors = [ 'Coda Hale' ]
  gem.email = 'coda.hale@gmail.com'
  gem.homepage = 'https://github.com/codahale/bcrypt-ruby'
  gem.license = 'MIT'


  gem.has_rdoc = true
  gem.rdoc_options += ['--title', 'bcrypt-ruby', '--line-numbers', '--inline-source', '--main', 'README.md']
  gem.extra_rdoc_files += ['README.md', 'COPYING', 'CHANGELOG', *Dir['lib/**/*.rb']]


  gem.add_development_dependency 'rake-compiler', '~> 0.9.2'
  gem.add_development_dependency 'rdoc', '~> 3.12'
  gem.add_development_dependency 'rspec', '>= 3'


  gem.files = `git ls-files`.split($/)

  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.extensions = gem.files.grep(%r{/extconf\.rb$})
  gem.require_paths = ['lib']

end
