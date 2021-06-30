require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test 'should get index page' do
    get api_v1_users_path
    assert_response :success
  end
end
