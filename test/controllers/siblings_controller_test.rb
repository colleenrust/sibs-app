require "test_helper"

class SiblingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/siblings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Sibling.count, data.length
  end
end
