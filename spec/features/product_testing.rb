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
      add_product
      page.should have_content "#{@product.name}"
    end
  end
  context 'pictures' do
    it 'allows signed in users to add pictures to animals' do
      log_in
      @product = FactoryGirl.create :product
      click_link "New Product"
      fill_in "product_name", with: Faker::Name.name
      fill_in "product_price", with: @product.price
      fill_in "product_description", with: @product.description
      click_button "Create Product"
      click_link "Boa Constrictor"
      save_and_open_page
      click_link "Edit Product"
      attach_file("product_picture", File.expand_path("./app/assets/images/albino_lion.jpeg"))
      click_button "Submit"
      page.should have_xpath("//img[@alt='Albino lion']")
    end
  end
end

