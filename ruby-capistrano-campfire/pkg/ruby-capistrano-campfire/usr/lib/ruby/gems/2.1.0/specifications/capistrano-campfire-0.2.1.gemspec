# -*- encoding: utf-8 -*-
# stub: capistrano-campfire 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-campfire"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Joshua Nichols"]
  s.date = "2013-03-16"
  s.description = " capistrano-tinder is a very simple library for making a Campfire room accessible from capistrano. All it does is provide said access, and nothing more, preferring to let other gems do that trickery.  "
  s.email = "josh@technicalpickles.com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/technicalpickles/capistrano-campfire"
  s.rubygems_version = "2.2.0"
  s.summary = "Post to Campfire from capistrano"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 0"])
      s.add_runtime_dependency(%q<tinder>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.2.9"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<capistrano-spec>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 0"])
      s.add_dependency(%q<tinder>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 1.2.9"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<capistrano-spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 0"])
    s.add_dependency(%q<tinder>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 1.2.9"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<capistrano-spec>, [">= 0"])
  end
end
