require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "GET /sessions/new" do
    it 'responds with a 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST/sessions/create' do
    before (:each) do
      User.create(username: 'user', password: 'password1', email: 'user@email.com')
    end

    it 'creates a session' do
      post :create, params: { username: 'user', password: 'password1'  }
      expect(response).to redirect_to(root_url)
    end

    it 're-renders the page if username is not correct' do
      post :create, params: { username: 'user1', password: 'password1' }
      expect(response).to have_http_status(200)
    end
  end
end
