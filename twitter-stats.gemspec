# -*- encoding: utf-8 -*-
require File.expand_path('../lib/twitter-stats/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["olistik"]
  gem.email         = ["maurizio.demagnis@gmail.com"]
  gem.description   = %q{Makes some stats about twitter usage, using Topsy}
  gem.summary       = %q{Right now it only counts the number of tweets with a specified keyword.}
  gem.homepage      = ""

  gem.add_dependency 'nokogiri', '~> 1.5.2'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "twitter-stats"
  gem.require_paths = ["lib"]
  gem.version       = Twitter::Stats::VERSION
end
