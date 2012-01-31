class LeaguesController < ApplicationController
  def new
    @title = "New League"
    @league = League.new
  end
  
  def create
    @league = League.new(params[:league])
    if @league.save
      flash[:success] = "Welcome to your new league!"
      redirect_to @league
    else
      @title = "New League"
      render 'new'
    end
  end
  
  def show
    @league = League.find(params[:id])
    @title = @league.name
  end

end
