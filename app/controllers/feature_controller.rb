class FeatureController < ApplicationController
 
    def index
     @features = Feature.all
 
  end
def list
    @features = Feature.all
  end
end
