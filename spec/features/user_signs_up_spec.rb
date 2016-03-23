require "rails_helper"

feature "user signs up for account" do
  scenario "successfully" do
    visit root_path
    click_link "Signup"

    fill_in "Username", with: "Joel"
    fill_in "Email", with: "joel@frog.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create User"

    expect(page).to have_content "User successfully created"
  end

  scenario "passwords don't match" do
    visit root_path
    click_link "Signup"

    fill_in "Username", with: "Joel"
    fill_in "Email", with: "joel@frog.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "not_password"
    click_button "Create User"

    expect(page).to have_content "Password confirmation doesn't match Password"
  end
end
