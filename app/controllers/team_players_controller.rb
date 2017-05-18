class TeamPlayersController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_team_player, only: [:show, :update, :destroy]

  # GET /team_players
  def index
    @team_players = TeamPlayer.all.order(params[:sort])

    render json: @team_players
  end

  # GET /team_players/1
  def show
    render json: @team_player
  end

  # POST /team_players
  def create
    @team_player = TeamPlayer.new(team_player_params)

    if @team_player.save
      render plain: "OK"
    else
      render json: @team_player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_players/1
  def update
    if @team_player.update(team_player_params)
      render json: @team_player
    else
      render json: @team_player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_players/1
  def destroy
    @team_player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_player
      @team_player = TeamPlayer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_player_params
      params.require(:team_player).permit(:games_played, :points_marked, :assist, :yellow_cards, :red_cards, :white_cards, :player_id, :team_id)
    end
end
