# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nx/version"

Gem::Specification.new do |spec|
  spec.name = "nx-watermark"
  spec.version = Nx::Watermark::VERSION
  spec.licenses = ["MIT"]
  spec.authors = ["afeiship"]
  spec.email = ["1290657123@qq.com"]

  spec.summary = %q{Watermark for ruby.}
  spec.description = %q{Watermark use mini_magick.}
  spec.homepage = "https://github.com/afeiship/nx-watermark"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  spec.files = ["lib/nx-watermark.rb"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.3", ">= 12.3.3"
  spec.add_dependency "mini_magick", "~> 4.10", ">= 4.10.1"
end
