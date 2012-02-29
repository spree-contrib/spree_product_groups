Spree::Promotion::Rules::Product.class_eval do
  belongs_to :product_group

  def eligible_products
    product_group ? product_group.products : products
  end

  def products_source=(source)
    if source.to_s == 'manual'
      self.product_group_id = nil
    end
  end

end
