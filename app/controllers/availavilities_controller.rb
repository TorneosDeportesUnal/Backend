class AvailavilitiesController < ApplicationController
  before_action :set_availavility, only: [:show, :edit, :update, :destroy]

  # GET /availavilities
  # GET /availavilities.json
  def index
    @availavilities = Availavility.all
  end

  # GET /availavilities/1
  # GET /availavilities/1.json
  def show
  end

  # GET /availavilities/new
  def new
    @availavility = Availavility.new
  end

  # GET /availavilities/1/edit
  def edit
  end

  # POST /availavilities
  # POST /availavilities.json
  def create
    @availavility = Availavility.new(availavility_params)

    respond_to do |format|
      if @availavility.save
        format.html { redirect_to @availavility, notice: 'Availavility was successfully created.' }
        format.json { render :show, status: :created, location: @availavility }
      else
        format.html { render :new }
        format.json { render json: @availavility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /availavilities/1
  # PATCH/PUT /availavilities/1.json
  def update
    respond_to do |format|
      if @availavility.update(availavility_params)
        format.html { redirect_to @availavility, notice: 'Availavility was successfully updated.' }
        format.json { render :show, status: :ok, location: @availavility }
      else
        format.html { render :edit }
        format.json { render json: @availavility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availavilities/1
  # DELETE /availavilities/1.json
  def destroy
    @availavility.destroy
    respond_to do |format|
      format.html { redirect_to availavilities_url, notice: 'Availavility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availavility
      @availavility = Availavility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def availavility_params
      params.require(:availavility).permit(:day_of_week, :begin_hour, :end_hour, :team_id)
    end
end
