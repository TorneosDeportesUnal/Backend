require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { captain: @team.captain, coach_name: @team.coach_name, delegate: @team.delegate, draws: @team.draws, goals_against: @team.goals_against, goals_difference: @team.goals_difference, goals_in_favor: @team.goals_in_favor, loses: @team.loses, name: @team.name, uniform_color: @team.uniform_color, wins: @team.wins } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { captain: @team.captain, coach_name: @team.coach_name, delegate: @team.delegate, draws: @team.draws, goals_against: @team.goals_against, goals_difference: @team.goals_difference, goals_in_favor: @team.goals_in_favor, loses: @team.loses, name: @team.name, uniform_color: @team.uniform_color, wins: @team.wins } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end