require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "gets sign in form" do
    get new_authentication_session_path

    assert_response :success
  end

  test "redirects to sign in form" do
    get root_path

    assert_redirected_to new_authentication_session_path
  end
end
