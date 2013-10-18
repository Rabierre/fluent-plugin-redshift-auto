# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-redshift-auto"
  gem.version       = File.read("VERSION").strip
  gem.authors       = ["Takashi Honda"]
  gem.email         = ["takashi.0628.honda@gmail.com"]
  gem.description   = %q{Amazon Redshift output plugin for Fluentd with creating table}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/takashi-honda/fluent-plugin-redshift-auto"
  gem.has_rdoc      = false

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "fluentd", "~> 0.10.0"
  gem.add_dependency "aws-sdk", ">= 1.6.3"
  gem.add_dependency "pg", "~> 0.14.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "flexmock", ">= 1.3.1"
end
