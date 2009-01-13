require File.join( File.dirname(__FILE__), 'test_helper' )

class ErubisHandlerTest < ActionController::TestCase
  
  def setup
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
    @controller = ::ProductsController.new 
  end
  
  test "should be able to render with success" do
    get :index
    assert_response 200
  end
  
end