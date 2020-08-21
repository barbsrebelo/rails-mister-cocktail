class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  def show
    @cocktails = Cocktail.find(params:(id))
    @dose = Dose.new
    @ingridient = Ingridient.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end
end
