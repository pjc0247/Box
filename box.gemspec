# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "box-rb"
  s.version = "1.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["pjc0247"]
  s.date = "2013-11-18"
  s.description = "ruby data box"
  s.email = ["pjc0247@naver.com"]
  s.homepage = "http://github.com/pjc0247/Box"
  s.require_paths = ["lib"]
  s.rubyforge_project = "box"
  s.rubygems_version = "1.8.25"
  s.summary = "ruby data box"
  s.files = Dir["lib/*.rb", "lib/box/*.rb"]
  
  s.executables << 'box'
end
