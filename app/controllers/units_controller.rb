class UnitsController < ApplicationController

  def create 
    @quest = Quest.find(params[:quest_id])
    @quest.units.create(unit_params)

    redirect_to quest_path(@quest)
  end

def destroy

	@quest = Quest.find(params[:quest_id])
 	@unit = @quest.units.find(params[:id])
    @unit.destroy


  	redirect_to quest_path(@quest)

end


  

  def unit_params
    params.require(:unit).permit(:name, :number, :player, :u_aligment)
  end
end
