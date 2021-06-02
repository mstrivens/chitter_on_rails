require 'rails_helper'

def sign_up
  visit ('/')
  click_link 'Sign-up'
  fill_in "Username", with: 'user'
  fill_in 'Password', with: 'password1'
  fill_in 'Email', with: 'user@email.com'
  click_on "user-signup-submit"
end

def login
  visit ('/')
  click_link 'Log-In'
  fill_in "Username", with: 'user'
  fill_in 'Password', with: 'password1'
  click_on "user-login-submit"
end
