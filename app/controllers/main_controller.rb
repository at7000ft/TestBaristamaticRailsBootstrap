#
# Title: MainController
# Description: Main Baristamatic controller
#
# Author: rholl00
# Date: 12/10/14
#

class MainController < ApplicationController

  def index
    puts "index: called with params - #{params}"
    @inventory = BaristaServiceMem.instance.getInventoryAvailable
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
