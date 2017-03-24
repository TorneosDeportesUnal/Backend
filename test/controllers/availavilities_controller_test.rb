require 'test_helper'

class AvailavilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availavility = availavilities(:one)
  end

  test "should get index" do
    get availavilities_url
    assert_response :success
  end

  test "should get new" do
    get new_availavility_url
    assert_response :success
  end

  test "should create availavility" do
    assert_difference('Availavility.count') do
      post availavilities_url, params: { availavility: { begin_hour: @availavility.begin_hour, day_of_week: @availavility.day_of_week, end_hour: @availavility.end_hour, team_id: @availavility.team_id } }
    end

    assert_redirected_to availavility_url(Availavility.last)
  end

  test "should show availavility" do
    get availavility_url(@availavility)
    assert_response :success
  end

  test "should get edit" do
    get edit_availavility_url(@availavility)
    assert_response :success
  end

  test "should update availavility" do
    patch availavility_url(@availavility), params: { availavility: { begin_hour: @availavility.begin_hour, day_of_week: @availavility.day_of_week, end_hour: @availavility.end_hour, team_id: @availavility.team_id } }
    assert_redirected_to availavility_url(@availavility)
  end

  test "should destroy availavility" do
    assert_difference('Availavility.count', -1) do
      delete availavility_url(@availavility)
    end

    assert_redirected_to availavilities_url
  end
end
