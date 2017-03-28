require 'test_helper'

class TeamPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_player = team_players(:one)
  end

  test "should get index" do
    get team_players_url, as: :json
    assert_response :success
  end

  test "should create team_player" do
    assert_difference('TeamPlayer.count') do
      post team_players_url, params: { team_player: { assist: @team_player.assist, games_played: @team_player.games_played, player_id: @team_player.player_id, points_marked: @team_player.points_marked, red_cards: @team_player.red_cards, team_id: @team_player.team_id, white_cards: @team_player.white_cards, yellow_cards: @team_player.yellow_cards } }, as: :json
    end

    assert_response 201
  end

  test "should show team_player" do
    get team_player_url(@team_player), as: :json
    assert_response :success
  end

  test "should update team_player" do
    patch team_player_url(@team_player), params: { team_player: { assist: @team_player.assist, games_played: @team_player.games_played, player_id: @team_player.player_id, points_marked: @team_player.points_marked, red_cards: @team_player.red_cards, team_id: @team_player.team_id, white_cards: @team_player.white_cards, yellow_cards: @team_player.yellow_cards } }, as: :json
    assert_response 200
  end

  test "should destroy team_player" do
    assert_difference('TeamPlayer.count', -1) do
      delete team_player_url(@team_player), as: :json
    end

    assert_response 204
  end
end
