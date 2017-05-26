class TeamGroupsController < ApplicationController
  #before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_team_group, only: [:show, :update, :destroy]

  # GET /team_groups
  def index
    @team_groups = TeamGroup.all.order(params[:sort])

    render json: @team_groups
  end

  # GET /team_groups/1
  def show
    @team_group = TeamGroup.find(params[:id])
    render json: @team_group
  end

  # POST /team_groups
  def create
    @team_group = TeamGroup.new(team_group_params)

    if @team_group.save
      render json: @team_group, status: :created, location: @team_group
    else
      render json: @team_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_groups/1
  def update
    @team_group = TeamGroup.find(params[:id])
    if @team_group.update(team_group_params)
      render json: @team_group
    else
      render json: @team_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_groups/1
  def destroy
    @team_group = TeamGroup.find(params[:id])
    @team_group.destroy
  end

  def team_groups_by_team_id
    @groups = TeamGroup.team_groups_by_team_id(params[:id]).order(params[:sort])
    render json: @groups
  end

  def show_teams
    @team_group = TeamGroup.by_group_id(params[:id])
    render json: @team_group
  end

  def team_group_search
    @teams = TeamGroup.tg_search(params[:teamId], params[:groupId])
    render json: @teams
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_group
      @team_group = TeamGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_group_params
      params.require(:team_group).permit(:position_in_group, :points_in_group, :group_draw, :group_wins, :group_loses, :group_id, :team_id)
    end
end
