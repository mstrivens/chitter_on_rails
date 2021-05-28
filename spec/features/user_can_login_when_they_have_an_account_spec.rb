require 'rails_helper'

RSpec.feature 'existing user' do
  scenario 'logs in with their details' do
    visit ('/')
    click_link 'Log-In'
    fill_in "Username", with: 'user1'
    fill_in 'Password', with: 'password1'
    click_on "user-login-submit"
    expect(page).to have_content("Welcome user1")
  end
end
