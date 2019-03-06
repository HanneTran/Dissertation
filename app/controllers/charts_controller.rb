class ChartsController < ApplicationController
  def features_by_category
  result = {}
    Patient.all.map do |c|
      result[c.name] = c.features.count
    end
      #result = Features.group(:pause).count
    render json: [{name: 'Count', data: result}]
  end 
end
# render json: Feature.group(:pause)