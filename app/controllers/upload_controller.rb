class UploadController < ApplicationController
  def index
  end

  def create
    project = Project.first
    image = project.images.build
    image.file = params[:file]
    project.save
  end
end
