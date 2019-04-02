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
    print "HEEEEEEELLLLOOOOOOOOOOO  PARAMS[:ID] PRINT BELOW"
    print params[:id]
    if (params[:id] == '1')
      @q = Q1.find_by(patient_id: params[:patient_id])
      print "YAAAAAS QUESTION 1 "
    else (params[:id] == '2')
      print "NOOOOOOOOOOOO question 1"
    end
    #if question_id = 1 use table Q1.
  end 
end
