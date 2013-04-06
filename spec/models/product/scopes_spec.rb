require 'spec_helper'

describe "product scopes" do

  it ".in_cached_group" do
    product = create(:product)
    product_group = create(:product_group)
    product_group.products << product
    Spree::Product.in_cached_group(product_group).should include(product)
  end

end
