class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  def searchq
    @teams = Team.search_q(params[:q])
    render json: @teams
  end

  # GET /teams_by_tournament/1
  def teams_by_tournament
    @teams = Team.tournament_id(params[:id])
    render json: @teams
  end

  # GET /team_matches_by_team/1
  def team_matches_by_team_id
    @teams = Team.team_matches_by_team_id(params[:id])
    render json: @teams
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:tournament_id, :name, :coach_name, :delegate, :captain, :uniform_color, :goals_against, :goals_in_favor, :goals_difference, :wins, :loses, :draws)
    end
end
