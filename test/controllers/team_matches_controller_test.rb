require 'test_helper'

class TeamMatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_match = team_matches(:one)
  end

  test "should get index" do
    get team_matches_url
    assert_response :success
  end

  test "should get new" do
    get new_team_match_url
    assert_response :success
  end

  test "should create team_match" do
    assert_difference('TeamMatch.count') do
      post team_matches_url, params: { team_match: { goals: @team_match.goals, match_id: @team_match.match_id, outcome: @team_match.outcome, points_gained: @team_match.points_gained, team_id: @team_match.team_id } }
    end

    assert_redirected_to team_match_url(TeamMatch.last)
  end

  test "should show team_match" do
    get team_match_url(@team_match)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_match_url(@team_match)
    assert_response :success
  end

  test "should update team_match" do
    patch team_match_url(@team_match), params: { team_match: { goals: @team_match.goals, match_id: @team_match.match_id, outcome: @team_match.outcome, points_gained: @team_match.points_gained, team_id: @team_match.team_id } }
    assert_redirected_to team_match_url(@team_match)
  end

  test "should destroy team_match" do
    assert_difference('TeamMatch.count', -1) do
      delete team_match_url(@team_match)
    end

    assert_redirected_to team_matches_url
  end
end
