require 'test_helper'

class AvailavilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availavility = availavilities(:one)
  end

  test "should get index" do
    get availavilities_url, as: :json
    assert_response :success
  end

  test "should create availavility" do
    assert_difference('Availavility.count') do
      post availavilities_url, params: { availavility: { begin_hour: @availavility.begin_hour, day_of_week: @availavility.day_of_week, end_hour: @availavility.end_hour, team_id: @availavility.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show availavility" do
    get availavility_url(@availavility), as: :json
    assert_response :success
  end

  test "should update availavility" do
    patch availavility_url(@availavility), params: { availavility: { begin_hour: @availavility.begin_hour, day_of_week: @availavility.day_of_week, end_hour: @availavility.end_hour, team_id: @availavility.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy availavility" do
    assert_difference('Availavility.count', -1) do
      delete availavility_url(@availavility), as: :json
    end

    assert_response 204
  end
end
