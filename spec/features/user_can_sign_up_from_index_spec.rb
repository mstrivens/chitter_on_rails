require 'rails_helper'

RSpec.feature 'new user' do
  scenario 'the user clicks a signup button, submits a form and is returned to index' do
    visit ('/')
    click_link 'Sign-up'
    fill_in "Username", with: 'user1'
    fill_in 'password', with: 'password1'
    click_button 'Submit'
    expect(page).to have_content("Welcome to Chitter")
  end
end
