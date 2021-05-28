require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = User.new(username:  "user1", email: 'user@email.com', password: 'password1') }

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
end
