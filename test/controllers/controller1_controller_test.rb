require 'test_helper'

class Controller1ControllerTest < ActionController::TestCase
  
  test "response_success" do
  	# user=users(:darshan)
    get :show_repos
    assert_response :success
  end


end
