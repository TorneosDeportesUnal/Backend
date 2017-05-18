class TournamentsController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_tournament, only: [:show, :update, :destroy]

  # GET /tournaments
  def index
    @tournaments = Tournament.all.order(params[:sort])

    render json: @tournaments
  end

  # GET /tournaments/1
  def show
    @tournament = Tournament.find(params[:id])
    render json: @tournament
  end

  # POST /tournaments
  def create
    @tournament = Tournament.new(tournament_params)

    if @tournament.save
      render json: @tournament, status: :created, location: @tournament
    else
      render json: @tournament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tournaments/1
  def update

    @tournament = Tournament.find(params[:id])
    if @tournament.update(tournament_params)
      render json: @tournament
    else
      render json: @tournament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tournaments/1
  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
  end

  def searchq
    @tournaments = Tournament.tournament_by_name(params[:q]).order(params[:sort])
    render json: @tournaments
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tournament_params
      params.require(:tournament).permit(:id, :name, :gender, :discipline, :begin_date, :end_date)
    end
end