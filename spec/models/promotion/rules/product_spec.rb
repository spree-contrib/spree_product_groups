require 'spec_helper'

describe Spree::Promotion::Rules::Product do
  let(:rule) { Spree::Promotion::Rules::Product.new }

  context "#eligible_products" do
    it "should return products from products group product_group if it exists" do
      rule.stub(:product_group => stub('product_group', :products => 'products'))
      rule.eligible_products.should == 'products'
    end

    it "should return products if product_group does not exist" do
      rule.stub(:product_group => nil, :products => 'products')
      rule.eligible_products.should == 'products'
    end
  end

  it "should reset product_group_id if given source is manual" do
    rule.product_group_id = 1
    rule.products_source = stub("source", :to_s => 'manual')
    rule.product_group_id.should be_nil
  end

end
