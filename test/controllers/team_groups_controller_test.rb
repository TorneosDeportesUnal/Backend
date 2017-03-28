require 'test_helper'

class TeamGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_group = team_groups(:one)
  end

  test "should get index" do
    get team_groups_url, as: :json
    assert_response :success
  end

  test "should create team_group" do
    assert_difference('TeamGroup.count') do
      post team_groups_url, params: { team_group: { group_draw: @team_group.group_draw, group_id: @team_group.group_id, group_loses: @team_group.group_loses, group_wins: @team_group.group_wins, position_in_group: @team_group.position_in_group, position_in_group: @team_group.position_in_group, team_id: @team_group.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show team_group" do
    get team_group_url(@team_group), as: :json
    assert_response :success
  end

  test "should update team_group" do
    patch team_group_url(@team_group), params: { team_group: { group_draw: @team_group.group_draw, group_id: @team_group.group_id, group_loses: @team_group.group_loses, group_wins: @team_group.group_wins, position_in_group: @team_group.position_in_group, position_in_group: @team_group.position_in_group, team_id: @team_group.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy team_group" do
    assert_difference('TeamGroup.count', -1) do
      delete team_group_url(@team_group), as: :json
    end

    assert_response 204
  end
end
