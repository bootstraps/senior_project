class LeaguesController < ApplicationController
  def new
    @title = "New League"
    @league = League.new
  end
  
  def create
    @league = League.new(params[:league])
    if @league.save
      @league_user = LeagueUser.new(:user_id => current_user.id,
                                        :league_id => @league.id)
      @league_user.save
      flash[:success] = "Welcome to your new league!"
      redirect_to @league
    else
      @title = "New League"
      render 'new'
    end
  end
  
  def index
    @title = "All Leagues"
    @leagues = League.all
  end
  
  def show
    @league = League.find(params[:id])
    @league_users = @league.league_users
    @games = @league.games
    @title = @league.name
    cookies[:league_id] = @league.id
  end
  
  def join
    @league_user = LeagueUser.new(:user_id => current_user.id,
                                      :league_id => cookies[:league_id])
    if @league_user.save
      flash[:success] = "You have successfully joined!"
      redirect_to League.find_by_id(cookies[:league_id])
    else
      redirect_to :back
    end
  end
end
