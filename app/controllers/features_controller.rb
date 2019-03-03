class FeaturesController < ApplicationController
 
    def index
     @features = Feature.all
 
  end
def list
    @features = Feature.all
  end

  def show
    @features = Feature.find(params[:id])
  end

  def create
  end  

  def update
  end

  def new
  end

end
