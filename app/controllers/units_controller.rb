class UnitsController < ApplicationController

  def create 
    @quest = Quest.find(params[:quest_id])
    @quest.units.create(unit_params)

    redirect_to quest_path(@quest)
  end

  

  def unit_params
    params.require(:unit).permit(:name, :number, :player)
  end
end
