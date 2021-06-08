require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'when fields are filled in' do
    before do
      @user = User.create(username: 'user', password: 'password1', email: 'user@email.com')
      @post = Post.create(body: "Hello World!", user_id: 1, created_at: 'date')
    end

    it 'responds to username' do
      expect(@post).to respond_to(:body)
    end

    it 'responds to password' do
      expect(@post).to respond_to(:user_id)
    end

    it 'responds to email' do
      expect(@post).to respond_to(:created_at)
    end

    it 'is valid' do
      expect(@post).to be_valid
    end
  end

  describe 'when user_id is missing' do
    before do
      @post = Post.new(body: "Hello World!", created_at: 'date')
    end

    it 'is invalid' do
      expect(@post).to_not be_valid
    end
  end
end
