SpreeProductGroups
==================

Spree extension for Product Group and Scope. This functionality was removed from Spree 1.1 and into this extension.

You can read more about product groups http://guides.spreecommerce.com/scopes_and_groups.html

Installation
============

In your application Gemfile, add this gem after the Spree gem:

```ruby
gem 'spree'
gem 'spree_product_groups', :git => 'git@github.com:spree/spree_product_groups.git'
```

Then run:

```shell
bundle
rails g spree_product_groups:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

Copyright (c) 2012-2013 Spree Commerce, released under the New BSD License
