Spree::Product.class_eval do
  class << self
    def simple_scopes_with_product_groups
      simple_scopes_without_product_groups + [
        :ascend_by_master_price,
        :descend_by_master_price,
        :descend_by_popularity
      ]
    end
    alias_method_chain :simple_scopes, :product_groups
  end

  def self.in_cached_group(product_group)
    joins(:product_groups).where('spree_product_groups_products.product_group_id' => product_group)
  end
end