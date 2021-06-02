require 'rails_helper'

RSpec.feature 'existing user' do
  scenario 'logs in with their details' do
    sign_up
    login
    expect(page).to have_content("Welcome user")
  end
end
