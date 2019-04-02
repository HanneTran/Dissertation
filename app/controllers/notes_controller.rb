class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find(params[:id])
  end
  
  def edit
    @patient = Patient.find(params[:patient_id])
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      redirect_to patient_path(params[:patient_id]), notice: 'Updated Note'
    else
      flash.now[:alert] = 'Failed to update'
      render :edit
   end
  end

  def create
  end 

  
  def note_params
    params.require(:note).permit(:id, :note, :patient_id)
  end
 
end
