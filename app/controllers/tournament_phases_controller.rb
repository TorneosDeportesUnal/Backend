class TournamentPhasesController < ApplicationController
  before_action :set_tournament_phase, only: [:show, :edit, :update, :destroy]

  # GET /tournament_phases
  # GET /tournament_phases.json
  def index
    @tournament_phases = TournamentPhase.all
  end

  # GET /tournament_phases/1
  # GET /tournament_phases/1.json
  def show
  end

  # GET /tournament_phases/new
  def new
    @tournament_phase = TournamentPhase.new
  end

  # GET /tournament_phases/1/edit
  def edit
  end

  # POST /tournament_phases
  # POST /tournament_phases.json
  def create
    @tournament_phase = TournamentPhase.new(tournament_phase_params)

    respond_to do |format|
      if @tournament_phase.save
        format.html { redirect_to @tournament_phase, notice: 'Tournament phase was successfully created.' }
        format.json { render :show, status: :created, location: @tournament_phase }
      else
        format.html { render :new }
        format.json { render json: @tournament_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournament_phases/1
  # PATCH/PUT /tournament_phases/1.json
  def update
    respond_to do |format|
      if @tournament_phase.update(tournament_phase_params)
        format.html { redirect_to @tournament_phase, notice: 'Tournament phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament_phase }
      else
        format.html { render :edit }
        format.json { render json: @tournament_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_phases/1
  # DELETE /tournament_phases/1.json
  def destroy
    @tournament_phase.destroy
    respond_to do |format|
      format.html { redirect_to tournament_phases_url, notice: 'Tournament phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_phase
      @tournament_phase = TournamentPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_phase_params
      params.require(:tournament_phase).permit(:phase_type, :tournament_id)
    end
end
