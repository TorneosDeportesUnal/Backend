require 'test_helper'

class AvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availability = availabilities(:one)
  end

  test "should get index" do
    get availabilities_url, as: :json
    assert_response :success
  end

  test "should create availability" do
    assert_difference('Availability.count') do
      post availabilities_url, params: { availability: { begin_hour: @availability.begin_hour, day_of_week: @availability.day_of_week, end_hour: @availability.end_hour } }, as: :json
    end

    assert_response 201
  end

  test "should show availability" do
    get availability_url(@availability), as: :json
    assert_response :success
  end

  test "should update availability" do
    patch availability_url(@availability), params: { availability: { begin_hour: @availability.begin_hour, day_of_week: @availability.day_of_week, end_hour: @availability.end_hour } }, as: :json
    assert_response 200
  end

  test "should destroy availability" do
    assert_difference('Availability.count', -1) do
      delete availability_url(@availability), as: :json
    end

    assert_response 204
  end
end
