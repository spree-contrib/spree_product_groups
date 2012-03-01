SpreeProductGroups
==================

Spree extension for Product Group and Scope. This functionality was removed from Spree 1.1 and into this extension.

You can read more about product groups http://guides.spreecommerce.com/scopes_and_groups.html

Installation
============

In your application Gemfile, add this gem after the Spree gem

```ruby
gem 'spree'
gem 'spree_product_groups', :git => 'git@github.com:spree/spree_product_groups.git'
```
run bundle install

Copy the migrations

```
rake spree_product_groups:install:migrations
rake db:migrate
```

Update your javascript and stylesheet assets to include this gem's assets

```
// inside /app/assets/javascripts/admin/all.js

//= require admin/spree_core
//= require admin/spree_auth
//= require admin/spree_api
//= require admin/spree_promo
//= require admin/spree_product_groups

// inside /app/assets/stylesheets/admin/all.css

 *= require admin/spree_core
 *= require admin/spree_auth
 *= require admin/spree_api
 *= require admin/spree_promo
 *= require admin/spree_product_groups

 rake assets:precompile
 ```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 Spree Commerce, released under the New BSD License
