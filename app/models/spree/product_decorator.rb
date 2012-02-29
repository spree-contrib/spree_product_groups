Spree::Product.class_eval do
  has_and_belongs_to_many :product_groups, :join_table => 'spree_product_groups_products'

  after_save :update_memberships if Spree::ProductGroup.table_exists?

  def update_memberships
    self.product_groups = Spree::ProductGroup.all.select { |pg| pg.include?(self) }
  end
end