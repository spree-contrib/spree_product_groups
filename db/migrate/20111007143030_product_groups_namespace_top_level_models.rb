class ProductGroupsNamespaceTopLevelModels < ActiveRecord::Migration
  def change
    rename_table :product_groups,          :spree_product_groups
    rename_table :product_groups_products, :spree_product_groups_products
    rename_table :product_scopes,          :spree_product_scopes
  end
end
