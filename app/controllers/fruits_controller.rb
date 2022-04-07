class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all 
    render template: "fruits/index"
  end

end
