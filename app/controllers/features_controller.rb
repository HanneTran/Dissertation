# Author: Hanne Tran
# Date: 20.04.19
# @patient find the patient with the patient_id from the URL path.
# @patf get all the features from Feature table.
# @note get the note from the patient with patient_id from the URL path.

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
  
  def duration
    @patient = Patient.find(params[:patient_id])
    @note = Note.find_by(patient_id: params[:patient_id])
  end 
  
  def notop
    @patient = Patient.find(params[:patient_id])
    @note = Note.find_by(patient_id: params[:patient_id])
  end 

  def empt
    @patient = Patient.find(params[:patient_id])
    @note = Note.find_by(patient_id: params[:patient_id])
  end  

  def variety
    @patient = Patient.find(params[:patient_id])
    @note = Note.find_by(patient_id: params[:patient_id])
  end 

end
