require 'test_helper'

class GroupTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_team = group_teams(:one)
  end

  test "should get index" do
    get group_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_group_team_url
    assert_response :success
  end

  test "should create group_team" do
    assert_difference('GroupTeam.count') do
      post group_teams_url, params: { group_team: { group_id: @group_team.group_id, loses: @group_team.loses, position_in_group: @group_team.position_in_group, team_id: @group_team.team_id, wins: @group_team.wins } }
    end

    assert_redirected_to group_team_url(GroupTeam.last)
  end

  test "should show group_team" do
    get group_team_url(@group_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_team_url(@group_team)
    assert_response :success
  end

  test "should update group_team" do
    patch group_team_url(@group_team), params: { group_team: { group_id: @group_team.group_id, loses: @group_team.loses, position_in_group: @group_team.position_in_group, team_id: @group_team.team_id, wins: @group_team.wins } }
    assert_redirected_to group_team_url(@group_team)
  end

  test "should destroy group_team" do
    assert_difference('GroupTeam.count', -1) do
      delete group_team_url(@group_team)
    end

    assert_redirected_to group_teams_url
  end
end
