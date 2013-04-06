FactoryGirl.define do
  factory :product_scope, :class => Spree::ProductScope do
    product_group { create(:product_group) }
    name 'with_ids'
    arguments 'some arguments'
  end
end