class AccomendationsController < ApplicationController
  before_action :set_accomendation, only: [:edit, :show, :update, :destroy]

  def index
     @accomendations = Accomendation.all
  end

  def create
    @accomendation = Accomendation.new(accomendation_params)
    if @accomendation.save
      redirect_to accomendations_path
    else
      render :new
    end
  end

  def new
    @accomendation = Accomendation.new
  end

  def edit
  end

  def show
  end

  def update
    @accomendation.update(accomendation_params)
    redirect_to accomendation_path(@accomendation)
  end

  def destroy
    @accomendation = Accomendation.find(params[:id])
    @accomendation.destroy
    redirect_to accomendations_path
  end

  private

  def accomendation_params
    params.require(:accomendation).permit(:title, :description, :rent)
  end

  def set_accomendation
    @accomendation = Accomendation.find(params[:id])
  end

end
