class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create]

  def new
    @dose = Dose.new
  end

  def create
     @dose = @cocktail.doses.build(dose_params)
     @dose.save
     redirect_to cocktails_path
  end

  def destroy

    @dose.destroy
    redirect_to cocktails_path

  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
