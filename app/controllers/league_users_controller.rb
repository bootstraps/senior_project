class LeagueUsersController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]

  def new
    @title = "Join League"
    @league_user = LeagueUser.new
    @league = League.find_by_name(:league)
  end
  
  def create
    @league_user = LeagueUser.new(:user_id => current_user.id,
                                      :league_id => cookies[:league_id])
    if @league_user.save
      flash[:success] = "You have successfully joined!"
      redirect_to League.find_by_id(cookies[:league_id])
    else
      @title = "Join League"
      render 'new'
    end
  end
  
end