require 'test_helper'

class TournamentPhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_phase = tournament_phases(:one)
  end

  test "should get index" do
    get tournament_phases_url
    assert_response :success
  end

  test "should get new" do
    get new_tournament_phase_url
    assert_response :success
  end

  test "should create tournament_phase" do
    assert_difference('TournamentPhase.count') do
      post tournament_phases_url, params: { tournament_phase: { phase_number: @tournament_phase.phase_number, phase_type: @tournament_phase.phase_type, tournament_id: @tournament_phase.tournament_id } }
    end

    assert_redirected_to tournament_phase_url(TournamentPhase.last)
  end

  test "should show tournament_phase" do
    get tournament_phase_url(@tournament_phase)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournament_phase_url(@tournament_phase)
    assert_response :success
  end

  test "should update tournament_phase" do
    patch tournament_phase_url(@tournament_phase), params: { tournament_phase: { phase_number: @tournament_phase.phase_number, phase_type: @tournament_phase.phase_type, tournament_id: @tournament_phase.tournament_id } }
    assert_redirected_to tournament_phase_url(@tournament_phase)
  end

  test "should destroy tournament_phase" do
    assert_difference('TournamentPhase.count', -1) do
      delete tournament_phase_url(@tournament_phase)
    end

    assert_redirected_to tournament_phases_url
  end
end
