class ModalitiesController < ApplicationController
  before_action :set_modality, only: [:show, :update, :destroy]

  # GET /modalities
  def index
    @modalities = Modality.all

    render json: @modalities
  end

  # GET /modalities/1
  def show
    render json: @modality
  end

  # POST /modalities
  def create
    @modality = Modality.new(modality_params)

    if @modality.save
      render json: @modality, status: :created, location: @modality
    else
      render json: @modality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modalities/1
  def update
    if @modality.update(modality_params)
      render json: @modality
    else
      render json: @modality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modalities/1
  def destroy
    @modality.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modality
      @modality = Modality.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modality_params
      params.require(:modality).permit(:discipline, :gender, :tournament_id)
    end
end
