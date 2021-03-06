class GroupsController < ApplicationController
 # before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_group, only: [:show, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.all.order(params[:sort])

    render json: @groups
  end

  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    render json: @group
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  def searchq
    @groups = Group.group_by_name(params[:q]).order(params[:sort])
    render json: @groups
  end

  def groups_by_t
    @groups = Group.groups_by_tournament_id(params[:id])
    render json: @groups
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:name, :active, :winners_number, :tournament_phase_id, team_ids:[])
    end
end
