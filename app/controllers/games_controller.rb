class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  
  def new
    @title = "New Game"
    @game = Game.new
    3.times {@game.game_players.build}
  end
  
  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:success] = "Succesfully Created Game"
      redirect_to League.find_by_id(cookies[:league_id])
    else
      @title = "New Game"
      render 'new'
    end
  end
  
  def show
    @title = "Game View"
    @game = Game.find(params[:id])
    @game_players = @game.game_players
    @user = User.find_by_id(@game_players)
  end
  
  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:success] = "Successfully updated game."
      redirect_to @game
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:success] = "Successfully destroyed survey."
    redirect_to League.find_by_id(@game.league_id)
  end
end
