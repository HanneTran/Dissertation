class NoteController < ApplicationController
  def index
  end

  def show
    @patient = Patient.find(params[:id])
  end
  
  def edit
    @patient = Patient.find(params[:id])
  end

  def update
  end

  def create
  end 
end
