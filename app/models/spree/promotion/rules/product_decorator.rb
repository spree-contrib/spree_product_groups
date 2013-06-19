if defined?(Spree::Promotion)
  module Spree
    class Promotion < Spree::Activator
      module Rules
        Product.class_eval do
          belongs_to :product_group
          attr_accessible :products_source, :product_group_id

          def eligible_products
            product_group ? product_group.products : products
          end

          def products_source=(source)
            if source.to_s == 'manual'
              self.product_group_id = nil
            end
          end

        end
      end
    end
  end
end
