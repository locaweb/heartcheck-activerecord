lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heartcheck/activerecord/version'

Gem::Specification.new do |spec|
  spec.name = 'heartcheck-activerecord'
  spec.version = Heartcheck::Activerecord::VERSION
  spec.authors = ['Locaweb']
  spec.email = ['desenvolvedores@locaweb.com.br']
  spec.summary = 'A activerecord checker'
  spec.description = 'Plugin to check activerecord connection in heartcheck.'
  spec.homepage = 'http://developer.locaweb.com.br'
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*'].select { |f| File.file?(f) }
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'net-telnet', '~> 0.1.1'

  spec.add_dependency 'activerecord', '>= 3.2', '< 7.0'
  spec.add_dependency 'heartcheck', '~> 2.0'

  spec.add_development_dependency 'pry-nav'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubycritic'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'yard'

  spec.required_ruby_version = '>= 2.3'
end
