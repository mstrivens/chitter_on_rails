require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(username:  "user1", email: 'user@email.com', password: 'password1')
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }

  it { should be_valid }
end
