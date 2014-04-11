require 'spec_helper'

describe "product testing" do
  context 'log in' do
    it "logs in" do
      log_in
    end
  end
  context 'new product' do
    it 'creates a new product' do
      log_in
      product = FactoryGirl.create :product
      click_link "New Product"
      fill_in "product_name", with: product.name
      fill_in "product_price", with: product.price
      fill_in "product_description", with: product.description
      click_button "Create Product"
      page.should have_content "#{product.name}"
    end
  end
end

