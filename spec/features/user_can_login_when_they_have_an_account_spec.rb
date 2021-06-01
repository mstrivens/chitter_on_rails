require 'rails_helper'

RSpec.feature 'existing user' do
  scenario 'logs in with their details' do
    visit ('/')
    click_link 'Sign-up'
    fill_in "Username", with: 'user12'
    fill_in 'Password', with: 'password1'
    fill_in 'Email', with: 'user12@email.com'
    click_on "user-signup-submit"
    visit ('/')
    click_link 'Log-In'
    fill_in "Username", with: 'user12'
    fill_in 'Password', with: 'password1'
    click_on "user-login-submit"
    expect(page).to have_content("Welcome user1")
  end
end
