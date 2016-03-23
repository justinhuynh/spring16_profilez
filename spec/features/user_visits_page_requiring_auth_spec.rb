require "rails_helper"

feature "user visits page requiring authentication" do
  let(:user) { User.create(username: "tester", email: "test@test.com", password: "password") }
  let!(:profile) { Profile.create(one_liner: "hello world", favorite_color: "blue", user: user) }

  scenario "when not signed in" do
    visit root_path

    click_link "hello world"

    expect(page).to have_content "You need to sign in or sign up before continuing"
    expect(page).to_not have_content profile.favorite_color
  end

  scenario "authenticated" do
    visit root_path
    click_link "Login"

    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Sign In"

    expect(page).to have_content "Signed in successfully"
    expect(page).to have_content "Signed in as #{user.username}"

    click_link "hello world"
    expect(page).to have_content profile.favorite_color
  end
end
