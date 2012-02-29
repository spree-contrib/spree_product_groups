Deface::Override.new(:virtual_path => "spree/admin/promotions/rules/_product",
                     :name => "product_groups_for_promo_product_rule",
                     :insert_before => ".products_rule_products",
                     :text => %q{
<p class="field products_rule_products_source_field">
  <label><%= radio_button_tag "#{param_prefix}[products_source]", :manual, promotion_rule.product_group.nil? %> <%= t "product_rule.product_source.manual" %></label> &nbsp;
  <label><%= radio_button_tag "#{param_prefix}[products_source]", :group, promotion_rule.product_group.present? %> <%= t('product_rule.product_source.group') %></label>
</p>
<p class="field products_rule_product_group">
  <label><%= t(:product_group) %><br />
    <%= select_tag "#{param_prefix}[product_group_id]", options_from_collection_for_select(Spree::ProductGroup.all, :id, :name, promotion_rule.product_group_id) %></label>
</p>
                      })
