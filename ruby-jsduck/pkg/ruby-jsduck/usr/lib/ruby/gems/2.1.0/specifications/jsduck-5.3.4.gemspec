# -*- encoding: utf-8 -*-
# stub: jsduck 5.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "jsduck"
  s.version = "5.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rene Saarsoo", "Nick Poulden"]
  s.date = "2013-10-15"
  s.description = "Documentation generator for Sencha JS frameworks"
  s.email = "rene.saarsoo@sencha.com"
  s.executables = ["jsduck"]
  s.files = ["bin/jsduck"]
  s.homepage = "https://github.com/senchalabs/jsduck"
  s.licenses = ["GPL-3"]
  s.rubyforge_project = "jsduck"
  s.rubygems_version = "2.2.0"
  s.summary = "Simple JavaScript Duckumentation generator"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdiscount>, ["~> 2.1.6"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8.0"])
      s.add_runtime_dependency(%q<parallel>, ["~> 0.7.1"])
      s.add_runtime_dependency(%q<rkelly-remix>, ["~> 0.0.4"])
      s.add_runtime_dependency(%q<dimensions>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<compass>, [">= 0"])
    else
      s.add_dependency(%q<rdiscount>, ["~> 2.1.6"])
      s.add_dependency(%q<json>, ["~> 1.8.0"])
      s.add_dependency(%q<parallel>, ["~> 0.7.1"])
      s.add_dependency(%q<rkelly-remix>, ["~> 0.0.4"])
      s.add_dependency(%q<dimensions>, ["~> 1.2.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
    end
  else
    s.add_dependency(%q<rdiscount>, ["~> 2.1.6"])
    s.add_dependency(%q<json>, ["~> 1.8.0"])
    s.add_dependency(%q<parallel>, ["~> 0.7.1"])
    s.add_dependency(%q<rkelly-remix>, ["~> 0.0.4"])
    s.add_dependency(%q<dimensions>, ["~> 1.2.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
  end
end
