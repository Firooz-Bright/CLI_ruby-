
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "house_find/version"

Gem::Specification.new do |spec|
  spec.name          = "house_find"
  spec.version       = HouseFind::VERSION
  spec.authors       = ["Firooz Mafakheri"]
  spec.email         = ["firooz.mafakheri@gmail.com"]

  spec.summary       = %q{finding the available housing}
  spec.description   = %q{ we aim to searh for different type of homes}
  spec.homepage      = "https://rubygems.org"
  #spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Firooz-Bright/CLI_ruby-.git"
    spec.metadata["changelog_uri"] = "https://github.com/Firooz-Bright/CLI_ruby-.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "2.1.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
