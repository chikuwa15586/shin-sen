class Admin::FortunesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  def index
    @fortunes = Fortune.all
  end

  def new
    @fortune = Fortune.new(fortune_params)
    if @fortune.save
      redirect_to admin_fortunes_path
    else
      render :new
    end
  end

  def edit
    @fortune = Fortune.find(params[:id])
  end

  def update
    @fortune = Fortune.find(params[:id])
    if @fortune.update(fortune_params)
      redirect_to admin_fortunes_path
    else
      render :edit
    end
  end

  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy
    redirect_to admin_fortunes_path
  end

  private

  def fortune_params
    params.require(:fortune).permit(:name, :rarity, :message)
  end
end
