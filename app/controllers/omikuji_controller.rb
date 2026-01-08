class OmikujiController < ApplicationController
  def show
    today = Date.current.to_s

    if session[:last_draw_date] == today
      # すでに引いている場合
      @fortune = Fortune.find(session[:fortune_id])
    else
      # まだ引いていない場合
      @fortune = Fortune.order("RANDOM()").first
      session[:last_draw_date] = today
      session[:fortune_id] = @fortune.id
    end
  end
end
