# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_groups'
  s.version     = '1.0.0'
  s.summary     = 'Product Group Extension for Spree'
  s.description = 'Spree extension for product group functionality that was removed from Spree 1.0.1'
  s.required_ruby_version = '>= 1.8.7'

  s.authors           = ['Chris Mar']
  s.email             = 'support@spreecommerce.com'
  s.homepage          = 'http://www.spreecommerce.com'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  #s.add_dependency 'spree', '~> 1.1.0.beta'

  s.add_development_dependency 'rspec-rails',  '~> 2.7'
  s.add_development_dependency 'sqlite3'
end
