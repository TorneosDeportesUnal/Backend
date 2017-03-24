class GameFieldsController < ApplicationController
  before_action :set_game_field, only: [:show, :update, :destroy]

  # GET /game_fields
  def index
    @game_fields = GameField.all

    render json: @game_fields
  end

  # GET /game_fields/1
  def show
    render json: @game_field
  end

  # POST /game_fields
  def create
    @game_field = GameField.new(game_field_params)

    if @game_field.save
      render json: @game_field, status: :created, location: @game_field
    else
      render json: @game_field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_fields/1
  def update
    if @game_field.update(game_field_params)
      render json: @game_field
    else
      render json: @game_field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_fields/1
  def destroy
    @game_field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_field
      @game_field = GameField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_field_params
      params.require(:game_field).permit(:location, :discipline)
    end
end
