require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "gets sign up form" do
    get new_authentication_registration_path

    assert_response :success
  end

  test "permits sign up" do
    post authentication_registration_path, params: {
      authentication_registration: {
        name: "Karl",
        email: "karl@example.com",
        password: "password",
        password_confirmation: "password"
      }
    }

    assert_equal User.last.name, "Karl"
    assert_redirected_to new_authentication_session_path
  end
end
