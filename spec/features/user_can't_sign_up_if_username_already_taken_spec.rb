require 'rails_helper'

RSpec.feature 'new user' do
  before do
    User.create(username: 'user', password: 'password', email: 'user1@email.com')
  end
  scenario 'error message when the user tries to sign up with a non-unique username' do
    visit ('/')
    click_link 'Sign-up'
    fill_in "Username", with: 'user'
    fill_in 'Password', with: 'password1'
    fill_in 'Email', with: 'user@email.com'
    click_on "user-signup-submit"
    expect(page).to have_content("Username has already been taken")
  end
end
