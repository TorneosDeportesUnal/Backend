class MatchesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_match, only: [:show, :update, :destroy]

  # GET /matches
  def index
    @matches = Match.all.order(params[:sort])

    render json: @matches
  end

  # GET /matches/1
  def show
    @match = Match.find(params[:id])
    render json: @match
  end

  # POST /matches
  def create
    @match = Match.new(match_params)

    if @match.save
      render plain: "OK"
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matches/1
  def update
    if @match.update(match_params)
      render json: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_params
      params.require(:match).permit(:game_field_location, :date, :judges, :observation, :winner_team, :loser_team, :group_id)
    end
end
