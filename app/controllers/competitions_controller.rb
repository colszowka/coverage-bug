class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.all
  end

  def new
    @competition = Competition.new
  end

  def create
    @competition = Competition.new params[:competition]
    if @competition.save
      redirect_to competitions_path
    else
      render :new
    end
  end
end
