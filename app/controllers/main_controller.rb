class MainController < ApplicationController

  def index
    puts "index: called"
    bar = BaristaServiceMem.instance
    @inventory = bar.getInventoryAvailable
    @drinks = BaristaServiceMem.instance.getDrinks
  end

  def about
  end

  def blog
  end

  def contact

  end

  def reStockInventory
    puts "reStockInventory: called"
    BaristaServiceMem.instance.reStockInventory
    redirect_to action: 'index', status: 303
  end

  def buy
    puts "buy: called for drink #{params['number']}"
    BaristaServiceMem.instance.orderDrink(params['number'])
    redirect_to action: 'index', status: 303
  end
end