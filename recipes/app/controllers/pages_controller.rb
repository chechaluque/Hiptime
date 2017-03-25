class PagesController < ApplicationController
  def home
  end
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
