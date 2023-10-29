class ExerciceTypesController < ApplicationController
  def index
    @exercice_types = ExerciceType.all
  end

  def show
    @exercice_type = ExerciceType.find(params[:id])
  end  
  
  def create
    p params
    @exercice_type = ExerciceType.create(name: params[:name], instruction: params[:instruction])
  end
end
