class PagesController < ApplicationController
  def home
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
