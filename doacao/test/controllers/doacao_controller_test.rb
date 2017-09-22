require 'test_helper'

class DoacaoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doacao_index_url
    assert_response :success
  end

end
