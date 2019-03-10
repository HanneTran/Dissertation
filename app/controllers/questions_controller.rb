class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end

  def show
    @question = Question.find(params[:id]) # video of the specific q should be here
    @patient = Question.where(patient_id: params[:id])
    @qu= Question.find_by(patient_id: params[:id])
  end 
end
