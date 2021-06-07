require 'rails_helper'

RSpec.feature 'new post' do
  scenario 'a logged in user can click create post button and create a post which displays on index' do
    sign_up
    login
    click_link 'New Post'
    fill_in 'post_body', with: 'Hello World!'
    click_button 'post-submit'
    expect(page).to have_content 'Hello World!'
  end
end
