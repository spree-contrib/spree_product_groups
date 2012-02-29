Deface::Override.new(:virtual_path => "spree/admin/shared/_product_sub_menu",
                     :name => "product_groups_to_products_submenu",
                     :insert_bottom => "ul#sub_nav",
                     :text => "<%= tab :product_groups, :match_path => '/product_groups', :css_class => 'last' %>")
