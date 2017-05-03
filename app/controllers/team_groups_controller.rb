class TeamGroupsController < ApplicationController
  before_action :set_team_group, only: [:show, :update, :destroy]

  # GET /team_groups
  def index
    @team_groups = TeamGroup.all.order(params[:sort])

    render json: @team_groups
  end

  # GET /team_groups/1
  def show
    render json: @team_group
  end

  # POST /team_groups
  def create
    @team_group = TeamGroup.new(team_group_params)

    if @team_group.save
      render plain: "OK"
    else
      render json: @team_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_groups/1
  def update
    if @team_group.update(team_group_params)
      render json: @team_group
    else
      render json: @team_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_groups/1
  def destroy
    @team_group.destroy
  end

  def team_groups_by_team_id
    @groups = TeamGroup.team_groups_by_team_id(params[:id]).order(params[:sort])
    render json: @groups
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_group
      @team_group = TeamGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_group_params
      params.require(:team_group).permit(:position_in_group, :position_in_group, :group_draw, :group_wins, :group_loses, :group_id, :team_id)
    end
end
