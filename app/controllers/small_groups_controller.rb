class SmallGroupsController < ApplicationController
  before_action :set_small_group, only: [:show, :edit, :update, :destroy]

  def index
    @small_groups = SmallGroup.all
  end

  def show
  end

  def new
    @small_group = SmallGroup.new
  end

  def edit
  end

  def create
    @small_group = SmallGroup.new(small_group_params)

    if @small_group.save
      redirect_to @small_group, notice: 'Small Group successfully created.'
    else
      render action: 'new'
    end
  end

  def update

    if @small_group.update(small_group_params)
      redirect_to @small_group, notice: 'Pin was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @small_group.destroy
    redirect_to small_groups_url
  end

  private
  def set_small_group
    @small_group = SmallGroup.find(params[:id])
  end

  def small_group_params
    params.require(:small_group).permit(:name, :ptas, :numPledges, :killsWeek, :killsTotal, :photosWeek, :photosTotal, :throwdownPoints, :initialPoints, :pointsWeek, :pointsTotal)
  end
end
