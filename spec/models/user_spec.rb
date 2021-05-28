require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'when fields are filled in' do
    before do
      @user = User.new(username:  "user1", email: 'user@email.com', password: 'password1')
    end

    it 'responds to username' do
      expect(@user).to respond_to(:username)
    end

    it 'responds to password' do
      expect(@user).to respond_to(:password)
    end

    it 'responds to email' do
      expect(@user).to respond_to(:email)
    end

    it 'is valid' do
      expect(@user).to be_valid
    end
  end

  describe "when username is empty" do
    before do
      @user = User.new(username:  "", email: 'user@email.com', password: 'password1')
    end

    it 'is not valid' do
      expect(@user).to_not be_valid
    end
  end

  describe "when password is empty" do
    before do
      @user = User.new(username:  "user1", email: 'user@email.com', password: '')
    end

    it 'is not valid' do
      expect(@user).to_not be_valid
    end
  end

  describe "when email is empty" do
    before do
      @user = User.new(username:  "user1", email: '', password: 'password1')
    end

    it 'is not valid' do
      expect(@user).to_not be_valid
    end
  end
end
