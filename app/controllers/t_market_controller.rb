class TMarketController < ApplicationController
  def index
    
  end
  

  def search
    #@team_results=Team.where(:name => params[:team_name])
    @team_results=Team.where("name LIKE ?","%#{params[:team_name]}%")
  end

 
end
