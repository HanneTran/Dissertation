class PatientController < ApplicationController
  def index
    
  end
  def show
    @patient = Patient.find(params[:id])
  end

  def list
    @patients = Patient.all
  end

  def new
  end

  def edit
    @patient = Patient.find(params[:id])
 
  end
  
  def create
  end  

  def update
  end

  def delete
  end

end
