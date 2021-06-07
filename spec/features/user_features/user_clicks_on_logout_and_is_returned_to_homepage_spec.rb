require 'rails_helper'

RSpec.describe 'log out' do
  scenario 'logged in user, clicks logout and is logged out' do
    sign_up
    login
    click_link 'Log-Out'
    expect(page).to have_content('Welcome to Chitter')
  end
end
