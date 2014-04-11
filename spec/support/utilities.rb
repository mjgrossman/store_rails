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
