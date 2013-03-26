module Spree
  module Admin
    module ProductGroupsHelper
      # Allow certain scope attributes to have a custom field type
      def product_scope_field(product_scope, i)
        value = (product_scope.arguments || [])[i]
        name = 'product_group[product_scopes_attributes][][arguments][]'
        if product_scope.name.to_sym == :with_ids
          text_field_tag name, value, :class => 'product_picker'
        else
          text_field_tag name, value
        end
      end
    end
  end
end
