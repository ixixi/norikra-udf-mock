# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "norikra-udf-my"
  spec.version       = "0.0.2"
  spec.authors       = ["Yuri Odagiri"]
  spec.email         = ["ixixizko@gmail.com"]
  spec.description   = %q{UDF example for Norikra development}
  spec.summary       = %q{Norikra UDF example}
  spec.homepage      = "https://github.com/ixixi/norikra-udf-my"
  spec.license       = "GPLv2"
  spec.platform      = "java" #Gem::Platform::JAVA

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "jar"]

  spec.add_runtime_dependency "norikra"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
