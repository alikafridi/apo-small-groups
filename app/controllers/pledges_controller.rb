class PledgesController < ApplicationController
  before_action :set_pledge, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @pledges = Pledge.all
  end

  def show
  end

  def new
    @pledge = Pledge.new
  end

  def edit
  end

  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      redirect_to @pledge, notice: 'Pledge successfully created.'
    else
      render action: 'new'
    end

  end

  def update
    if @pledge.update(pledge_params)
      redirect_to @pledge, notice: 'Pledge was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pledge.destroy
    redirect_to pledges_url
  end

  private
  def set_pledge
    @pledge = Pledge.find(params[:id])
  end

  def pledge_params
    params.require(:pledge).permit(:name, :smallGroup, :smallGroups_id, :killsWeek, :diedWeek, :killsTotal, :deathsTotal)
  end
end
