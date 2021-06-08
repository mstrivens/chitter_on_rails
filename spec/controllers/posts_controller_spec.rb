require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET/posts/new" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      post :create, params: { post: { body: "Hello, world!", user_id: 1 } }
      expect(response).to redirect_to(root_url)
    end
  end
end
