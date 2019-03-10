class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find(params[:id])
  end
  
  def edit
    @note = Note.find(params[:id])
  end

  def update
  end

  def create
  end 
end
