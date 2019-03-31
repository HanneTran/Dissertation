class FilesController < ApplicationController
  def index
    @videos = Q1.all
  end

  def show
    @video = Q1.where(patient_id: params[:id])
end
