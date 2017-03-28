require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url, as: :json
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post matches_url, params: { match: { date: @match.date, game_field_location: @match.game_field_location, group_id: @match.group_id, judges: @match.judges, loser_team: @match.loser_team, observation: @match.observation, winner_team: @match.winner_team } }, as: :json
    end

    assert_response 201
  end

  test "should show match" do
    get match_url(@match), as: :json
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { date: @match.date, game_field_location: @match.game_field_location, group_id: @match.group_id, judges: @match.judges, loser_team: @match.loser_team, observation: @match.observation, winner_team: @match.winner_team } }, as: :json
    assert_response 200
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete match_url(@match), as: :json
    end

    assert_response 204
  end
end
