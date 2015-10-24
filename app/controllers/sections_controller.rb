class SectionsController < ApplicationController
  def index
    @sections = Section.order(:section_name)
  end

  def show
    @section = Section.friendly.find(params[:id])
  end
end
