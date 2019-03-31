class PatientsController < ApplicationController
  before_action :find_patient_from_params, only:[:edit,:update]
  def index
     @patients = Patient.all
     @questions = Question.all
  end

  def search
    @patients  = Patient.where(name: params[:search][:name])
    render :index
  end

  def show
    @patient = Patient.find(params[:id])
    #@note = Note.find(params[:id])
    #@question = Question.find_by(patient_id: params[:id])
    @questions = Question.all
    @qu = Question.where(patient_id: params[:id])
    
  end


  def list
    @patients = Patient.all
    @questions = Question.all
  end
  

  def edit
    @note = Note.all
  end
  

  def update #update method is being called after the edit method. This update the changes being made.
    if @patient.update(patient_param)
      redirect_to :show
    else render :edit
    end
  end

 
  private
    def patient_param
    params.require(:patient).permit(:name, :dem_type)
    end

    def find_patient_from_params
    @patient = Patient.find(params[:id])
    end
end
    #@category = Category.find(params[:id])
    #@patCat = Patient.find(params[:id])
