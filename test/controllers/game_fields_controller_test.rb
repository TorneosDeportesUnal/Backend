require 'test_helper'

class GameFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_field = game_fields(:one)
  end

  test "should get index" do
    get game_fields_url, as: :json
    assert_response :success
  end

  test "should create game_field" do
    assert_difference('GameField.count') do
      post game_fields_url, params: { game_field: { discipline: @game_field.discipline, location: @game_field.location } }, as: :json
    end

    assert_response 201
  end

  test "should show game_field" do
    get game_field_url(@game_field), as: :json
    assert_response :success
  end

  test "should update game_field" do
    patch game_field_url(@game_field), params: { game_field: { discipline: @game_field.discipline, location: @game_field.location } }, as: :json
    assert_response 200
  end

  test "should destroy game_field" do
    assert_difference('GameField.count', -1) do
      delete game_field_url(@game_field), as: :json
    end

    assert_response 204
  end
end
