class OmikujiController < ApplicationController
  before_action :authenticate_user!
  
  def show
    today = Date.current.to_s # YYYY-MM-DD形式保存

    draw_result = current_user.draw_results.find_by(drawn_on: today)  # 今日引いた結果を検索

    if draw_result
      @fortune = draw_result.fortune  # すでに引いていた場合結果を表示
    else
      @fortune = Fortune.order("RANDOM()").first # ランダムにおみくじを引く
      current_user.draw_results.create!(     
        fortune: @fortune,
        drawn_on: today
      )
    end
  end
end
