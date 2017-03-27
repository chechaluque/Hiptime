class PagesController < ApplicationController
  before_action :chef_params, only: [:show, :destroy]
  def home
  end
  def index
    @chefs = Chef.paginate(page: params[:page], per_page: 5)
  end

  def show
    @chef = Chef.find(params[:id])
    @chef_recipes = @chef.recipes.paginate(page: params[:page], per_page: 5)
  end

  def destroy
    @chef.destroy
    flash[:danger]= "Chef and all associated recipes have been deleted!"
    redirect_to pages_path()
  end

  private
    def chef_params
      @chef = Chef.find(params[:id])
    end
end
