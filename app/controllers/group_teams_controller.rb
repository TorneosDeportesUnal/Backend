class GroupTeamsController < ApplicationController
  before_action :set_group_team, only: [:show, :edit, :update, :destroy]

  # GET /group_teams
  # GET /group_teams.json
  def index
    @group_teams = GroupTeam.all
  end

  # GET /group_teams/1
  # GET /group_teams/1.json
  def show
  end

  # GET /group_teams/new
  def new
    @group_team = GroupTeam.new
  end

  # GET /group_teams/1/edit
  def edit
  end

  # POST /group_teams
  # POST /group_teams.json
  def create
    @group_team = GroupTeam.new(group_team_params)

    respond_to do |format|
      if @group_team.save
        format.html { redirect_to @group_team, notice: 'Group team was successfully created.' }
        format.json { render :show, status: :created, location: @group_team }
      else
        format.html { render :new }
        format.json { render json: @group_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_teams/1
  # PATCH/PUT /group_teams/1.json
  def update
    respond_to do |format|
      if @group_team.update(group_team_params)
        format.html { redirect_to @group_team, notice: 'Group team was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_team }
      else
        format.html { render :edit }
        format.json { render json: @group_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_teams/1
  # DELETE /group_teams/1.json
  def destroy
    @group_team.destroy
    respond_to do |format|
      format.html { redirect_to group_teams_url, notice: 'Group team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_team
      @group_team = GroupTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_team_params
      params.require(:group_team).permit(:position_in_group, :wins, :loses, :group_id, :team_id)
    end
end
