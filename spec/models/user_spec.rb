require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'when fields are filled in' do
    before do
      @user = User.new(username:  "user", email: 'user@email.com', password: 'password1')
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

    it 'responds to email' do
      expect(@user).to respond_to(:id)
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
      @user = User.new(username:  "user", email: 'user@email.com', password: '')
    end

    it 'is not valid' do
      expect(@user).to_not be_valid
    end
  end

  describe "when email is empty" do
    before do
      @user = User.new(username:  "user", email: '', password: 'password1')
    end

    it 'is not valid' do
      expect(@user).to_not be_valid
    end
  end

  describe 'the username has already been used' do
    before do
      User.create(username:  "user", email: 'user@email.com', password: 'password1')
    end

    it 'is not valid' do
      @user = User.create(username:  "user", email: 'user1@email.com', password: 'password1')
      expect(@user).to_not be_valid
    end
  end

  describe 'the email has already been used' do
    before do
      User.create(username:  "user", email: 'user@email.com', password: 'password1')
    end

    it 'is not valid' do
      @user = User.create(username:  "user1", email: 'user@email.com', password: 'password1')
      expect(@user).to_not be_valid
    end
  end
end
