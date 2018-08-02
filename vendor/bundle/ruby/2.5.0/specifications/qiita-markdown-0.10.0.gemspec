# -*- encoding: utf-8 -*-
# stub: qiita-markdown 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "qiita-markdown".freeze
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryo Nakamura".freeze]
  s.date = "2015-07-31"
  s.email = ["r7kamura@gmail.com".freeze]
  s.homepage = "https://github.com/increments/qiita-markdown".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Qiita-specified markdown processor.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<gemoji>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<github-linguist>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<html-pipeline>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<mem>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pygments.rb>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<greenmat>.freeze, ["< 4", ">= 3.2.0.2"])
      s.add_runtime_dependency(%q<rugged>.freeze, [">= 0.21.1b2"])
      s.add_runtime_dependency(%q<sanitize>.freeze, [">= 0"])
      s.add_development_dependency(%q<benchmark-ips>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["= 0.4.4"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["= 3.1.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.29"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<gemoji>.freeze, [">= 0"])
      s.add_dependency(%q<github-linguist>.freeze, [">= 0"])
      s.add_dependency(%q<html-pipeline>.freeze, ["~> 2.0"])
      s.add_dependency(%q<mem>.freeze, [">= 0"])
      s.add_dependency(%q<pygments.rb>.freeze, [">= 0"])
      s.add_dependency(%q<greenmat>.freeze, ["< 4", ">= 3.2.0.2"])
      s.add_dependency(%q<rugged>.freeze, [">= 0.21.1b2"])
      s.add_dependency(%q<sanitize>.freeze, [">= 0"])
      s.add_dependency(%q<benchmark-ips>.freeze, ["~> 1.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["= 0.4.4"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["= 3.1.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.29"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<gemoji>.freeze, [">= 0"])
    s.add_dependency(%q<github-linguist>.freeze, [">= 0"])
    s.add_dependency(%q<html-pipeline>.freeze, ["~> 2.0"])
    s.add_dependency(%q<mem>.freeze, [">= 0"])
    s.add_dependency(%q<pygments.rb>.freeze, [">= 0"])
    s.add_dependency(%q<greenmat>.freeze, ["< 4", ">= 3.2.0.2"])
    s.add_dependency(%q<rugged>.freeze, [">= 0.21.1b2"])
    s.add_dependency(%q<sanitize>.freeze, [">= 0"])
    s.add_dependency(%q<benchmark-ips>.freeze, ["~> 1.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["= 0.4.4"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["= 3.1.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.29"])
  end
end
