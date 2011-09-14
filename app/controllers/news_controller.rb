class NewsController < ApplicationController
  def new
    @news = competition.news.build
  end

  def create
    @news = competition.news.build params[:news]
    if @news.save
      redirect_to @competition
    else
      render :new
    end
  end

private
  def competition
    @competition ||= Competition.find params[:competition_id]
  end
end
