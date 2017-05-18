class PlayersController < ApplicationController

  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  def index
    render json: Player.all.order(params[:sort]), status: :ok
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])
    render json: @player
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    if @player.save
      render plain: "OK"
    else
      render json: @player.errors, status: :unprocessable_entity

    end
  end

  def update

    @player = Player.find(params[:id])
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity

    end
  end

  # DELETE /players/1

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end


  # GET /players_by_team/1
  def players_by_team
    @player = Player.players_by_team_id(params[:id]).order(params[:sort])
    render json: @player
  end

  def searchq
    @players = Player.search_q(params[:q]).order(params[:sort])
    render json: @players
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:document, :document_type, :first_name, :last_name, :email, :semester, :career, :gender, :age, :contact_phone, :eps, :contact_emergency_phone, :contact_emergency_name,  team_ids:[])
  end
end
