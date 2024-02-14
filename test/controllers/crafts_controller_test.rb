require "test_helper"

class CraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @craft = crafts(:one)
  end

  test "should get index" do
    get crafts_url, as: :json
    assert_response :success
  end

  test "should create craft" do
    assert_difference("Craft.count") do
      post crafts_url, params: { craft: { number: @craft.number } }, as: :json
    end

    assert_response :created
  end

  test "should show craft" do
    get craft_url(@craft), as: :json
    assert_response :success
  end

  test "should update craft" do
    patch craft_url(@craft), params: { craft: { number: @craft.number } }, as: :json
    assert_response :success
  end

  test "should destroy craft" do
    assert_difference("Craft.count", -1) do
      delete craft_url(@craft), as: :json
    end

    assert_response :no_content
  end
end
