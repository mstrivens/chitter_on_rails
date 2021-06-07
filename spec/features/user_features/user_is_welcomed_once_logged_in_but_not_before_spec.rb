require 'rails_helper'

RSpec.feature "user welcomed when logged in" do
  scenario 'new visitor to page only sees general welcome' do
    visit ('/')
    expect(page).to_not have_content("Welcome user1")
  end

  scenario 'once signed up and logged in sees specific welcome' do
    sign_up('test')
    login('test')
    expect(page).to have_content("Welcome test")
  end
end
