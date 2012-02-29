Spree::Property.class_eval do
  after_destroy :recalculate_product_group_products

  private

  # A fix for #774
  # What was happening was that when a property was deleted, any product group
  # that used the property to calculate included properties was not recalculated
  #
  # Recalculates product group products after the property has been deleted
  def recalculate_product_group_products
    ProductScope.where(:name => "with_property", :arguments => [self.name].to_yaml).each do |scope|
      # Triggers ProductGroup#update_memberships callback to recalculate products
      scope.product_group.save!
    end
  end
end
