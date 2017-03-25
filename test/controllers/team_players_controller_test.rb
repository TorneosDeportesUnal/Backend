require 'test_helper'

class TeamPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_player = team_players(:one)
  end

  test "should get index" do
    get team_players_url
    assert_response :success
  end

  test "should get new" do
    get new_team_player_url
    assert_response :success
  end

  test "should create team_player" do
    assert_difference('TeamPlayer.count') do
      post team_players_url, params: { team_player: { assist: @team_player.assist, faults: @team_player.faults, games_played: @team_player.games_played, player_id: @team_player.player_id, points_market: @team_player.points_market, team_id: @team_player.team_id } }
    end

    assert_redirected_to team_player_url(TeamPlayer.last)
  end

  test "should show team_player" do
    get team_player_url(@team_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_player_url(@team_player)
    assert_response :success
  end

  test "should update team_player" do
    patch team_player_url(@team_player), params: { team_player: { assist: @team_player.assist, faults: @team_player.faults, games_played: @team_player.games_played, player_id: @team_player.player_id, points_market: @team_player.points_market, team_id: @team_player.team_id } }
    assert_redirected_to team_player_url(@team_player)
  end

  test "should destroy team_player" do
    assert_difference('TeamPlayer.count', -1) do
      delete team_player_url(@team_player)
    end

    assert_redirected_to team_players_url
  end
end
