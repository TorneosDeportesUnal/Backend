require 'test_helper'

class TournamentPhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_phase = tournament_phases(:one)
  end

  test "should get index" do
    get tournament_phases_url, as: :json
    assert_response :success
  end

  test "should create tournament_phase" do
    assert_difference('TournamentPhase.count') do
      post tournament_phases_url, params: { tournament_phase: { phase_type: @tournament_phase.phase_type } }, as: :json
    end

    assert_response 201
  end

  test "should show tournament_phase" do
    get tournament_phase_url(@tournament_phase), as: :json
    assert_response :success
  end

  test "should update tournament_phase" do
    patch tournament_phase_url(@tournament_phase), params: { tournament_phase: { phase_type: @tournament_phase.phase_type } }, as: :json
    assert_response 200
  end

  test "should destroy tournament_phase" do
    assert_difference('TournamentPhase.count', -1) do
      delete tournament_phase_url(@tournament_phase), as: :json
    end

    assert_response 204
  end
end
