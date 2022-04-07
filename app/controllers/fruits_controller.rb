class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all 
    render template: "fruits/index"
  end

  def create
    fruit = Fruit.new(name: params[:name], color: params[:color], description: params[:description], image: params[:image])
    if fruit.save
      render json: {message: "Fruit has been added!"}
    else
      render json: {errors: fruit.errors.full_messages}
    end
  end

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render template: "fruits/show"
  end

end
