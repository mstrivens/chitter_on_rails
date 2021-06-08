require 'rails_helper'

def create_post
  click_link 'New Post'
  fill_in 'post_body', with: 'Hello World!'
  click_button 'post-submit'
end
