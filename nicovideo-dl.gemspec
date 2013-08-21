# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nicovideo/dl/version'

Gem::Specification.new do |spec|
  spec.name          = "nicovideo-dl"
  spec.version       = Nicovideo::DL::VERSION
  spec.authors       = ["Naoto SHINGAKI"]
  spec.email         = ["nao.sora+github@gmail.com"]
  spec.description   = %q{Nicovideo Downloader}
  spec.summary       = %q{Nicovideo Downloader}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "niconico"
  spec.add_runtime_dependency "pit"
  spec.add_runtime_dependency "mechanize"
end
