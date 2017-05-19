class AvailavilitiesController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_availavility, only: [:show, :update, :destroy]

  # GET /availabilities
  def index
    @availavilities = Availavility.all.order(params[:sort])

    render json: @availavilities
  end

  # GET /availabilities/1
  def show
    @player = Availavility.find(params[:id])
    render json: @availavility
  end

  # POST /availabilities
  def create
    @availavility = Availavility.new(availavility_params)

    if @availavility.save
      render json: @availavility, status: :created, location: @availavility
    else
      render json: @availavility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /availabilities/1
  def update
    @player = Availavility.find(params[:id])
    if @availavility.update(availavility_params)
      render json: @availavility
    else
      render json: @availavility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /availabilities/1
  def destroy
    @player = Availavility.find(params[:id])
    @availavility.destroy
  end

  # GET /team_availavilities/1
  def team_availavilities
    @availavility = Availavility.team_availavilities(params[:id]).order(params[:sort])
    render json: @availavility
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
