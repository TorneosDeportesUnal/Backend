require 'test_helper'

class TeamMatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_match = team_matches(:one)
  end

  test "should get index" do
    get team_matches_url, as: :json
    assert_response :success
  end

  test "should create team_match" do
    assert_difference('TeamMatch.count') do
      post team_matches_url, params: { team_match: { goals: @team_match.goals, match_id: @team_match.match_id, outcome: @team_match.outcome, points_gained: @team_match.points_gained, team_id: @team_match.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show team_match" do
    get team_match_url(@team_match), as: :json
    assert_response :success
  end

  test "should update team_match" do
    patch team_match_url(@team_match), params: { team_match: { goals: @team_match.goals, match_id: @team_match.match_id, outcome: @team_match.outcome, points_gained: @team_match.points_gained, team_id: @team_match.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy team_match" do
    assert_difference('TeamMatch.count', -1) do
      delete team_match_url(@team_match), as: :json
    end

    assert_response 204
  end
end
