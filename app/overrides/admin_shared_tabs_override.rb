Deface::Override.new(:virtual_path => "spree/admin/shared/_tabs",
                     :name => "admin_shared_tabs",
                     :replace => "code[erb-loud]:contains('tab :products')",
                     :text => "<%= tab :products , :option_types, :properties, :prototypes, :variants, :product_properties, :product_groups, :taxons %>")