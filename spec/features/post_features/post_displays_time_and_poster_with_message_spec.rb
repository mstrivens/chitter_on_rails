require 'rails_helper'

RSpec.feature 'post display' do
  scenario 'a logged in user can click create post button and create a post which displays on index' do
    sign_up
    login
    create_post
    expect(page).to have_content 'Posted at:'
    expect(page).to have_content 'User: user'
  end
end
