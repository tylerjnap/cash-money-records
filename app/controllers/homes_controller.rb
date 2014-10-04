class HomesController < ApplicationController
  def show
     @yahoos  = YahooFinance.historical_quotes(params[:stock][:abbreviation], Time::now-(24*60*60*365), Time::now).reverse
   #   @g = graph_this (@yahoos)


  end

  def index
     @all_stocks = Stock.all.map{ |stock| [stock.name, stock.abbreviation]}
     @stock = Stock.new
  end

  # private
  # def graph_this (yahoos)
  #    g = Gruff::Line.new
  #     g.title = 'Wow!  Look at this!'
  #     g.labels = { 0 => "Last Year", 1 => "Now"}
  #     g.data :Open, yahoos.map{|yahoo| yahoo.open}
  #     g.data :Close, yahoos.map{|yahoo| yahoo.close}
  #     g.data :High, yahoos.map{|yahoo| yahoo.high}
  #     g.data :Low, yahoos.map{|yahoo| yahoo.low}
  #     return g
  # end
end
