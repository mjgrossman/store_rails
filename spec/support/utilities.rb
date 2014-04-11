def log_in
  user = FactoryGirl.create :user
  visit root_path
  click_link "Log In"
  @name = user.name
  fill_in "Name", with: user.name
  fill_in "Password", with: user.password
  click_button "Log In"
end

def add_photo
  click_link @name
  attach_file("Add photo", File.expand_path("./app/assets/images/tiger.jpeg"))
  click_button "Submit"
end

def add_product
  @product = FactoryGirl.create :product
  click_link "New Product"
  fill_in "product_name", with: @product.name
  fill_in "product_price", with: @product.price
  fill_in "product_description", with: @product.description
  click_button "Create Product"
    DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end
