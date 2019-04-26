# Author: Hanne Tran
# Date: 20.04.19
# Method index, search, show, detail has been completed.

class PatientsController < ApplicationController
  # Checks if a user has an account, before giving access to the system.
  before_action :authenticate_user!
  before_action :find_patient_from_params, only:[:edit,:update]
  
  def index
     @patients = Patient.all
     @questions = Question.all
  end
  
  # search for a patient with a name.
  def search
    @patients  = Patient.where(name: params[:search][:name])
    render :index
  end

  # @patient show patient with the id from the URL path.
  # @note show the note from the patient with the id from URL path.
  def show
    @patient = Patient.find(params[:id])
    @note = Note.find_by(patient_id: params[:id])
  end
  
  def list
    @patients = Patient.all
    @questions = Question.all
  end
  
  # show the details of a patient.
  def detail
    @patient = Patient.find(params[:patient_id])
  end
  

  def edit
    @note = Note.find(params[:id])
    @patient = Patient.find(params[:id])
  end
  
  #update method is being called after the edit method. This update the changes being made.
  def update 
    if @patient.update(patient_param)
      redirect_to :show
    else render :edit
    end
  end

  # private methods
  private
    def patient_param
    params.require(:patient).permit(:name, :dem_type)
    end

    def find_patient_from_params
    @patient = Patient.find(params[:id])
    end
end
   
