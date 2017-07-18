Gem::Specification.new do |gem|
  gem.name = 'bcrypt4'
  gem.version = '4.0.1'

  gem.summary = 'OpenBSD\'s bcrypt() password hashing algorithm.'
  gem.description = <<-EOF
    bcrypt() is a sophisticated and secure hash algorithm designed by The OpenBSD project
    for hashing passwordgem. The bcrypt Ruby gem provides a simple wrapper for safely handling
    passwordgem.
  EOF

  gem.authors = [ 'Coda Hale' ]
  gem.email = 'coda.hale@gmail.com'
  gem.homepage = "https://github.com/dissolve/bcrypt-ruby"
  gem.license = 'MIT'


  gem.has_rdoc = true
  gem.rdoc_options += ['--title', 'bcrypt-ruby', '--line-numbers', '--inline-source', '--main', 'README.md']
  gem.extra_rdoc_files += ['README.md', 'COPYING', 'CHANGELOG', *Dir['lib/**/*.rb']]


  gem.post_install_message = %q{

The 'bcrypt' gem has had a long running issue that has prevented interop with other implementations of bcrypt.  The maintainer seems to be waiting on some specific implementation support before fixing this issue (raised 2 years ago).  The 'bcrypt4' gem was created to simply fix that issue.  I am no longer waiting for the original maintainer.

}

  gem.add_development_dependency 'rake-compiler', '~> 0.9.2'
  gem.add_development_dependency 'rdoc', '~> 3.12'
  gem.add_development_dependency 'rspec', '>= 3'

  gem.files = `git ls-files`.split($/)

  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.extensions = gem.files.grep(%r{/extconf\.rb$})
  gem.require_paths = ['lib']

end
