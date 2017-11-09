class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :action => "new"
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to tasks_path(@task)
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(task_params)
    redirect_to tasks_path(@tasks)
  end

  def edit
    params.require(:cocktail).permit(:name)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
