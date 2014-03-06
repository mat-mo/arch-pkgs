# -*- encoding: utf-8 -*-
# stub: tinder 1.9.4 ruby lib

Gem::Specification.new do |s|
  s.name = "tinder"
  s.version = "1.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brandon Keepers", "Brian Ryckbost", "Tony Coconate"]
  s.date = "2014-02-24"
  s.description = "A Ruby API for interfacing with Campfire, the 37Signals chat application."
  s.email = ["brandon@opensoul.org", "bryckbost@gmail.com", "me@tonycoconate.com"]
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://github.com/collectiveidea/tinder"
  s.rubygems_version = "2.2.0"
  s.summary = "Ruby wrapper for the Campfire API"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.9"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.9"])
      s.add_runtime_dependency(%q<hashie>, ["< 3", ">= 1.0"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8.0"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 1.19"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.7"])
      s.add_runtime_dependency(%q<twitter-stream>, ["~> 0.1"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, ["~> 1.0"])
      s.add_dependency(%q<faraday>, ["~> 0.8.9"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.9"])
      s.add_dependency(%q<hashie>, ["< 3", ">= 1.0"])
      s.add_dependency(%q<json>, ["~> 1.8.0"])
      s.add_dependency(%q<mime-types>, ["~> 1.19"])
      s.add_dependency(%q<multi_json>, ["~> 1.7"])
      s.add_dependency(%q<twitter-stream>, ["~> 0.1"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, ["~> 1.0"])
    s.add_dependency(%q<faraday>, ["~> 0.8.9"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.9"])
    s.add_dependency(%q<hashie>, ["< 3", ">= 1.0"])
    s.add_dependency(%q<json>, ["~> 1.8.0"])
    s.add_dependency(%q<mime-types>, ["~> 1.19"])
    s.add_dependency(%q<multi_json>, ["~> 1.7"])
    s.add_dependency(%q<twitter-stream>, ["~> 0.1"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
