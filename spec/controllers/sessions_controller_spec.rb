require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "GET /sessions/new" do
    it 'responds with a 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end
end
