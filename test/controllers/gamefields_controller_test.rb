require 'test_helper'

class GamefieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gamefield = gamefields(:one)
  end

  test "should get index" do
    get gamefields_url
    assert_response :success
  end

  test "should get new" do
    get new_gamefield_url
    assert_response :success
  end

  test "should create gamefield" do
    assert_difference('Gamefield.count') do
      post gamefields_url, params: { gamefield: { discipline: @gamefield.discipline, location: @gamefield.location, match_id: @gamefield.match_id } }
    end

    assert_redirected_to gamefield_url(Gamefield.last)
  end

  test "should show gamefield" do
    get gamefield_url(@gamefield)
    assert_response :success
  end

  test "should get edit" do
    get edit_gamefield_url(@gamefield)
    assert_response :success
  end

  test "should update gamefield" do
    patch gamefield_url(@gamefield), params: { gamefield: { discipline: @gamefield.discipline, location: @gamefield.location, match_id: @gamefield.match_id } }
    assert_redirected_to gamefield_url(@gamefield)
  end

  test "should destroy gamefield" do
    assert_difference('Gamefield.count', -1) do
      delete gamefield_url(@gamefield)
    end

    assert_redirected_to gamefields_url
  end
end
