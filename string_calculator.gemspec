
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "string_calculator/version"

Gem::Specification.new do |spec|
  spec.name          = "string_calculator"
  spec.version       = StringCalculator::VERSION
  spec.authors       = ["sivamanikandan"]
  spec.email         = ["siva.mca19@gmail.com"]

  spec.summary       = %q{To sum the string of numbers}
  spec.description   = %q{To sum the string of numbers}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
