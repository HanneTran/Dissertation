# Author: Hanne Tran
# Date: 20.04.19

class QuestionsController < ApplicationController

  # shows all the questions of a patient with patient_id from URL path.
  def index
    @patient = Patient.find(params[:patient_id])
    @questions = Question.all
  end

  # @question select a question data from the Question table that has the id from URL path.
  # @t show video file that has the patient_id and id from URL path.
  def show
    @question = Question.find(params[:id])
    @t = Q.find_by(patient_id: params[:patient_id],question_id: params[:id])
  end 
end
