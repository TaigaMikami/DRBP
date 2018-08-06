# -*- encoding: utf-8 -*-
# stub: github-linguist 6.3.1 ruby lib
# stub: ext/linguist/extconf.rb

Gem::Specification.new do |s|
  s.name = "github-linguist".freeze
  s.version = "6.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["GitHub".freeze]
  s.date = "2018-07-20"
  s.description = "We use this library at GitHub to detect blob languages, highlight code, ignore binary files, suppress generated files in diffs, and generate language breakdown graphs.".freeze
  s.executables = ["linguist".freeze, "git-linguist".freeze]
  s.extensions = ["ext/linguist/extconf.rb".freeze]
  s.files = ["bin/git-linguist".freeze, "bin/linguist".freeze, "ext/linguist/extconf.rb".freeze]
  s.homepage = "https://github.com/github/linguist".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "GitHub Language detection".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<charlock_holmes>.freeze, ["~> 0.7.6"])
      s.add_runtime_dependency(%q<escape_utils>.freeze, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 1.19"])
      s.add_runtime_dependency(%q<rugged>.freeze, [">= 0.25.1"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 5.0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_development_dependency(%q<plist>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_development_dependency(%q<color-proximity>.freeze, ["~> 0.2.1"])
      s.add_development_dependency(%q<licensed>.freeze, ["~> 1.1.0"])
      s.add_development_dependency(%q<licensee>.freeze, [">= 0"])
    else
      s.add_dependency(%q<charlock_holmes>.freeze, ["~> 0.7.6"])
      s.add_dependency(%q<escape_utils>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<mime-types>.freeze, [">= 1.19"])
      s.add_dependency(%q<rugged>.freeze, [">= 0.25.1"])
      s.add_dependency(%q<minitest>.freeze, [">= 5.0"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<plist>.freeze, ["~> 3.1"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_dependency(%q<color-proximity>.freeze, ["~> 0.2.1"])
      s.add_dependency(%q<licensed>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<licensee>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<charlock_holmes>.freeze, ["~> 0.7.6"])
    s.add_dependency(%q<escape_utils>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<mime-types>.freeze, [">= 1.19"])
    s.add_dependency(%q<rugged>.freeze, [">= 0.25.1"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<plist>.freeze, ["~> 3.1"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<color-proximity>.freeze, ["~> 0.2.1"])
    s.add_dependency(%q<licensed>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<licensee>.freeze, [">= 0"])
  end
end
