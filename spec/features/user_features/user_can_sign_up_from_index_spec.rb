require 'rails_helper'

RSpec.feature 'new user' do
  scenario 'the user clicks a signup button, submits a form and is returned to index' do
    visit ('/')
    click_link 'Sign-up'
    fill_in "Username", with: 'user'
    fill_in 'Password', with: 'password1'
    fill_in 'Email', with: 'user@email.com'
    click_on "user-signup-submit"
    expect(page).to have_content("Sign up successful")
  end
end
