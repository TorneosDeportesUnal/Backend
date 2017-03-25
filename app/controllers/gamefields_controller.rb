class GamefieldsController < ApplicationController
  before_action :set_gamefield, only: [:show, :edit, :update, :destroy]

  # GET /gamefields
  # GET /gamefields.json
  def index
    @gamefields = Gamefield.all
  end

  # GET /gamefields/1
  # GET /gamefields/1.json
  def show
  end

  # GET /gamefields/new
  def new
    @gamefield = Gamefield.new
  end

  # GET /gamefields/1/edit
  def edit
  end

  # POST /gamefields
  # POST /gamefields.json
  def create
    @gamefield = Gamefield.new(gamefield_params)

    respond_to do |format|
      if @gamefield.save
        format.html { redirect_to @gamefield, notice: 'Gamefield was successfully created.' }
        format.json { render :show, status: :created, location: @gamefield }
      else
        format.html { render :new }
        format.json { render json: @gamefield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamefields/1
  # PATCH/PUT /gamefields/1.json
  def update
    respond_to do |format|
      if @gamefield.update(gamefield_params)
        format.html { redirect_to @gamefield, notice: 'Gamefield was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamefield }
      else
        format.html { render :edit }
        format.json { render json: @gamefield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamefields/1
  # DELETE /gamefields/1.json
  def destroy
    @gamefield.destroy
    respond_to do |format|
      format.html { redirect_to gamefields_url, notice: 'Gamefield was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamefield
      @gamefield = Gamefield.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamefield_params
      params.require(:gamefield).permit(:location, :discipline, :match_id)
    end
end
