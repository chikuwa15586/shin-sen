class DrawResultsController < ApplicationController
  def index
    @draw_results = current_user.draw_results  
                                .includes(:fortune)  # N+1対策
                                .order(drawn_on: :desc)  # 新しい順
  end
end
