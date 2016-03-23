require "rails_helper"

feature "user signs out" do
  let(:user) { User.create(username: "tester", email: "test@test.com", password: "password") }

  scenario "successfully" do
    visit root_path
    click_link "Login"

    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Sign In"

    expect(page).to have_content "Signed in successfully"
    expect(page).to have_content "Signed in as #{user.username}"

    click_link "Logout"

    expect(page).to have_content "Signed out successfully"
    expect(page).to_not have_content "Signed in as #{user.username}"
  end
end