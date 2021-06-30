require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "name", email: "test@email.com")
  end
    
  test 'valid user' do
    assert @user.valid?
  end
end
