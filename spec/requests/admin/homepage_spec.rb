require 'spec_helper'

describe "Homepage" do
   context "visiting the products tab" do
    before(:each) do
      sign_in_as!(Factory(:admin_user))
      visit spree.admin_products_path
    end

    it "should have a link to product groups" do
      within(:css, '#sub-menu') { page.find_link("Product Groups")['/admin/product_groups'] }
    end

    it "products tab is selected for product groups" do
      click_link "Product Groups"
      within(:css, '#admin-menu li.selected') { page.find_link("Products") }
    end
  end
end
