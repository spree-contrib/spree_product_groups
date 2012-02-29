Spree::Product.class_eval do
  has_and_belongs_to_many :product_groups, :join_table => 'spree_product_groups_products'

  after_save :update_memberships if Spree::ProductGroup.table_exists?

  def update_memberships
    self.product_groups = Spree::ProductGroup.all.select { |pg| pg.include?(self) }
  end

  def possible_promotions
    rules_with_matching_product_groups = product_groups.map(&:promotion_rules).flatten
    all_rules = promotion_rules + rules_with_matching_product_groups
    promotion_ids = all_rules.map(&:activator_id).uniq
    Spree::Promotion.advertised.where(:id => promotion_ids)
   end

end