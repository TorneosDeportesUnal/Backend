require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { age: @player.age, career: @player.career, contact_emergency_name: @player.contact_emergency_name, contact_emergency_phone: @player.contact_emergency_phone, contact_phone: @player.contact_phone, document: @player.document, document_type: @player.document_type, email: @player.email, eps: @player.eps, first_name: @player.first_name, gender: @player.gender, last_name: @player.last_name, semester: @player.semester } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { age: @player.age, career: @player.career, contact_emergency_name: @player.contact_emergency_name, contact_emergency_phone: @player.contact_emergency_phone, contact_phone: @player.contact_phone, document: @player.document, document_type: @player.document_type, email: @player.email, eps: @player.eps, first_name: @player.first_name, gender: @player.gender, last_name: @player.last_name, semester: @player.semester } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
