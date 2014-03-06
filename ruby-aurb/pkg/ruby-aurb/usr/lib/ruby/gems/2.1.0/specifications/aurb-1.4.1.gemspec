# -*- encoding: utf-8 -*-
# stub: aurb 1.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "aurb"
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gigamo"]
  s.date = "2011-09-21"
  s.description = "An AUR (Arch User Repository) utility"
  s.email = ["gigamo@gmail.com"]
  s.executables = ["aurb"]
  s.files = ["bin/aurb"]
  s.homepage = "http://github.com/gigamo/aurb"
  s.rubyforge_project = "aurb"
  s.rubygems_version = "2.2.0"
  s.summary = "An AUR (Arch User Repository) utility"
  s.has_rdoc = true

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<archive-tar-minitar>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<archive-tar-minitar>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<archive-tar-minitar>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end
