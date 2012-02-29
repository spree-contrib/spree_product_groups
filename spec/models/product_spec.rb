require 'spec_helper'

describe Spree::Product do

  context "shoulda validations" do
    let(:product) {Factory(:product)}
    it { should have_and_belong_to_many(:product_groups) }
  end

end
