class CostumesController < ApplicationController
  def show
    @costume = Costume.includes(:section, :costume_variants).find(params[:id])
  end
end
