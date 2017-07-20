Gem::Specification.new do |s|
  s.name = 'bcrypt4'
  s.version = '4.1.0'

  s.summary = "OpenBSD's bcrypt() password hashing algorithm."
  s.description = <<-EOF
    bcrypt() is a sophisticated and secure hash algorithm designed by The OpenBSD project
    for hashing passwords. The bcrypt Ruby gem provides a simple wrapper for safely handling
    passwords.
  EOF

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)

  s.add_development_dependency 'rake-compiler', '~> 1.0.4'
  s.add_development_dependency 'rspec', '3.6'
  s.add_development_dependency 'rdoc', '~> 5.1.0'

  s.has_rdoc = true
  s.rdoc_options += ['--title', 'bcrypt-ruby', '--line-numbers', '--inline-source', '--main', 'README.md']
  s.extra_rdoc_files += ['README.md', 'COPYING', 'CHANGELOG', *Dir['lib/**/*.rb']]

  s.extensions = 'ext/mri/extconf.rb'

  s.authors = ["Coda Hale"]
  s.email = "coda.hale@gmail.com"
  s.homepage = "https://github.com/dissolve/bcrypt-ruby"
  s.license = "MIT"

  s.post_install_message = %q{

  There is a known issue with JRuby and '2y' format bcrypt hashes.
  Due to an unfixed issue in jBCrypt, these hashes are not the same as on other implementations.

}

end
