class PrizesController < ApplicationController
  before_action :set_prize, only: [:show, :update, :destroy]

  # GET /prizes
  def index
    @prizes = Prize.all

    render json: @prizes
  end

  # GET /prizes/1
  def show
    render json: @prize
  end

  # POST /prizes
  def create
    @prize = Prize.new(prize_params)

    if @prize.save
      render json: @prize, status: :created, location: @prize
    else
      render json: @prize.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prizes/1
  def update
    if @prize.update(prize_params)
      render json: @prize
    else
      render json: @prize.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prizes/1
  def destroy
    @prize.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prize
      @prize = Prize.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prize_params
      params.require(:prize).permit(:name, :description)
    end
end
