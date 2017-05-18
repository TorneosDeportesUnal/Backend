class TeamMatchesController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_team_match, only: [:show, :update, :destroy]

  # GET /team_matches
  def index
    @team_matches = TeamMatch.all.order(params[:sort])

    render json: @team_matches
  end

  # GET /team_matches/1
  def show
    @player = TeamMatch.find(params[:id])
    render json: @team_match
  end

  # POST /team_matches
  def create
    @team_match = TeamMatch.new(team_match_params)

    if @team_match.save
      render json: @team_match, status: :created, location: @team_match
    else
      render json: @team_match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_matches/1
  def update
    @player = TeamMatch.find(params[:id])
    if @team_match.update(team_match_params)
      render json: @team_match
    else
      render json: @team_match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_matches/1
  def destroy
    @player = TeamMatch.find(params[:id])
    @team_match.destroy
  end

  def team_matches_by_team_id
    @teams = TeamMatch.team_matches_by_team_id(params[:id]).order(params[:sort])
    render json: @teams
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_match
      @team_match = TeamMatch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_match_params
      params.require(:team_match).permit(:outcome, :points_gained, :goals, :match_id, :team_id)
    end
end
