require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament = tournaments(:one)
  end

  test "should get index" do
    get tournaments_url, as: :json
    assert_response :success
  end

  test "should create tournament" do
    assert_difference('Tournament.count') do
      post tournaments_url, params: { tournament: { begin_date: @tournament.begin_date, end_date: @tournament.end_date, prize: @tournament.prize } }, as: :json
    end

    assert_response 201
  end

  test "should show tournament" do
    get tournament_url(@tournament), as: :json
    assert_response :success
  end

  test "should update tournament" do
    patch tournament_url(@tournament), params: { tournament: { begin_date: @tournament.begin_date, end_date: @tournament.end_date, prize: @tournament.prize } }, as: :json
    assert_response 200
  end

  test "should destroy tournament" do
    assert_difference('Tournament.count', -1) do
      delete tournament_url(@tournament), as: :json
    end

    assert_response 204
  end
end
