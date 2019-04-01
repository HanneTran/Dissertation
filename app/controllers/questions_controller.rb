class QuestionsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @questions = Question.all
    @q1 = Q1.all
    @q1s = Q1.find_by(patient_id: params[:patient_id])
    @q2s = Q2.find_by(patient_id: params[:id])
    @q3s = Q3.find_by(patient_id: params[:id])
    @q4s = Q4.find_by(patient_id: params[:id])
    @q5s = Q5.find_by(patient_id: params[:id])
    @q6s = Q6.find_by(patient_id: params[:id])
    @q7s = Q7.find_by(patient_id: params[:id])
    @q8s = Q8.find_by(patient_id: params[:id])
    @q9s = Q9.find_by(patient_id: params[:id])
    @q10s = Q10.find_by(patient_id: params[:id])
    @q11s = Q11.find_by(patient_id: params[:id])
    @q12s = Q12.find_by(patient_id: params[:id])
    #@test = Q1.joins("INNER JOIN posts ON question.id = q1.id")
    #@te = Q1.joins(:questions => :q1s).where(‘@question.id’ => @q1s.question_id)
    @t = Question.joins(:q1s).select('questions.description')
  end

  def show
    @question = Question.find(params[:id]) # video of the specific q should be here
    @patient = Question.where(patient_id: params[:id])
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
