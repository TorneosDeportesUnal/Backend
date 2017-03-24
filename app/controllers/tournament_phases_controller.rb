class TournamentPhasesController < ApplicationController
  before_action :set_tournament_phase, only: [:show, :update, :destroy]

  # GET /tournament_phases
  def index
    @tournament_phases = TournamentPhase.all

    render json: @tournament_phases
  end

  # GET /tournament_phases/1
  def show
    render json: @tournament_phase
  end

  # POST /tournament_phases
  def create
    @tournament_phase = TournamentPhase.new(tournament_phase_params)

    if @tournament_phase.save
      render json: @tournament_phase, status: :created, location: @tournament_phase
    else
      render json: @tournament_phase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tournament_phases/1
  def update
    if @tournament_phase.update(tournament_phase_params)
      render json: @tournament_phase
    else
      render json: @tournament_phase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tournament_phases/1
  def destroy
    @tournament_phase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_phase
      @tournament_phase = TournamentPhase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tournament_phase_params
      params.require(:tournament_phase).permit(:phase_type)
    end
end
