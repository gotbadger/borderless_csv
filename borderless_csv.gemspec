
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "borderless_csv/version"

Gem::Specification.new do |spec|
  spec.name          = "borderless_csv"
  spec.version       = BorderlessCsv::VERSION
  spec.authors       = ["Philip Hayton"]
  spec.email         = ["gotbadger@users.noreply.github.com"]

  spec.summary       = %q{Transferwise CSV export convertor.}
  spec.description   = %q{Simplify Transferwise Bordless account csv exports such that they can be supported by more generic tools.}
  spec.homepage      = "http://github.com/gotbadger/borderless_csv."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
