require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET/users/new" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end

  describe "POST/users/create" do
    let(:create_user) { User.create(username: 'user123', password: 'password123', email: 'user123@email.com') }
    it 'creates a new user' do
      expect{ create_user }.to change{ User.count }.by(1)
    end
  end

    it "creates a user" do
      post :create, params: { user: { username: "user1", password: "password1", email: 'user@email.com' } }
      expect(User.find_by(username: "user1")).to be
    end

    it 're-renders the page if username is not unique' do
      User.create(username: 'user1', password: 'password1', email: 'user@email.com')
      post :create, params: { user: { username: "user1", password: "password1", email: 'user@email2.com' } }
      expect(response).to have_http_status(200)
    end

    it 're-renders the page if email is not unique' do
      User.create(username: 'user', password: 'password1', email: 'user@email.com')
      post :create, params: { user: { username: "user1", password: "password1", email: 'user@email.com' } }
      expect(response).to have_http_status(200)
    end
  end
end
