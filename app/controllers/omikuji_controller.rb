class OmikujiController < ApplicationController
  def show
    @fortune = Fortune.order("RANDOM()").first
  end
end
