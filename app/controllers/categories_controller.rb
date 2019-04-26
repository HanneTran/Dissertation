# Author: Hanne Tran
# Date: 20.04.19
# The different actions in category pages. 

class CategoriesController < ApplicationController
  def index
    @categories = Category.all 
  end
  
  def list
    @categories = Category.all
  end

  def search
    @categories  =Category.where(name: params[:search][:type])
    render :index
  end
 
   def show
    @categories = Category.find(params[:id])
  end
end
