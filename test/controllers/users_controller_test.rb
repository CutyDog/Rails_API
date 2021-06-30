require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.first
  end

  test 'should get index page' do
    get api_v1_users_path
    assert_response :success
  end

  test 'should get show page' do
    get api_v1_user_path(@user)
    assert_response :success
  end
end
