require 'rails_helper'

def sign_up
  visit ('/')
  click_link 'Sign-up'
  fill_in "Username", with: 'user12'
  fill_in 'Password', with: 'password1'
  fill_in 'Email', with: 'user12@email.com'
  click_on "user-signup-submit"
end
