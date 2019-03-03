class TypeController < ApplicationController
  def index
    @types = Type.all 
  end
  
  def list
    @types = Type.all
  end

  def search
    @types  = Type.where(name: params[:search][:type])
    render :index
  end
end
