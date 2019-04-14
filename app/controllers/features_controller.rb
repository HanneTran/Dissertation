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
  
  def duration
    @patient = Patient.find(params[:patient_id])
    @patf = Feature.all
    @note = Note.find_by(patient_id: params[:patient_id])
  end 
  
  def notop
    @patient = Patient.find(params[:patient_id])
    @patf = Feature.all
    @note = Note.find_by(patient_id: params[:patient_id])
  end 

  def empt
    @patient = Patient.find(params[:patient_id])
    @patf = Feature.all
    @note = Note.find_by(patient_id: params[:patient_id])
  end  

  def variety
    @patient = Patient.find(params[:patient_id])
    @patf = Feature.all
    @note = Note.find_by(patient_id: params[:patient_id])
  end 

end
