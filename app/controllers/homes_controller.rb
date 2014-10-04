class HomesController < ApplicationController
  def show
     @yahoos  = YahooFinance.historical_quotes(params[:stock][:abbreviation], Time::now-(24*60*60*365), Time::now).reverse
   #   debugger
   #   debugger
  end

  def index
     @all_stocks = Stock.all.map{ |stock| [stock.name, stock.abbreviation]}
     @stock = Stock.new
  end
end
