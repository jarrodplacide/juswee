# -*- encoding: utf-8 -*-
# stub: google_currency 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "google_currency"
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Shane Emmons"]
  s.date = "2015-03-02"
  s.description = "GoogleCurrency extends Money::Bank::Base and gives you access to the current Google Currency exchange rates."
  s.email = ["semmons99@gmail.com"]
  s.homepage = "http://rubymoney.github.com/google_currency"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Access the Google Currency exchange rate data."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_development_dependency(%q<yard>, [">= 0.5.8"])
      s.add_development_dependency(%q<ffi>, [">= 0"])
      s.add_runtime_dependency(%q<money>, ["~> 6.5.0"])
    else
      s.add_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_dependency(%q<yard>, [">= 0.5.8"])
      s.add_dependency(%q<ffi>, [">= 0"])
      s.add_dependency(%q<money>, ["~> 6.5.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 3.0.0"])
    s.add_dependency(%q<yard>, [">= 0.5.8"])
    s.add_dependency(%q<ffi>, [">= 0"])
    s.add_dependency(%q<money>, ["~> 6.5.0"])
  end
end
