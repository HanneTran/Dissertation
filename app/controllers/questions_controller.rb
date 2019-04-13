class QuestionsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @questions = Question.all
  end
  
  def show
    @question = Question.find(params[:id]) # video of the specific q should be here
    #@patient = Question.where(patient_id: params[:id])
    #@q= Q1.find_by(patient_id: params[:patient_id])
    @vid1= Q1.find_by(patient_id: params[:id])
    @t = Q.find_by(patient_id: params[:patient_id],question_id: params[:id])
   
  end 
end
