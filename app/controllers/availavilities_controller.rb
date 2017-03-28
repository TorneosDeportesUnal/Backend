class AvailavilitiesController < ApplicationController
  before_action :set_availavility, only: [:show, :update, :destroy]

  # GET /availavilities
  def index
    @availavilities = Availavility.all

    render json: @availavilities
  end

  # GET /availavilities/1
  def show
    render json: @availavility
  end

  # POST /availavilities
  def create
    @availavility = Availavility.new(availavility_params)

    if @availavility.save
      render json: @availavility, status: :created, location: @availavility
    else
      render json: @availavility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /availavilities/1
  def update
    if @availavility.update(availavility_params)
      render json: @availavility
    else
      render json: @availavility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /availavilities/1
  def destroy
    @availavility.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availavility
      @availavility = Availavility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def availavility_params
      params.require(:availavility).permit(:day_of_week, :begin_hour, :end_hour, :team_id)
    end
end
