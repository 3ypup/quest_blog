class QuestsController < ApplicationController

def authentificate
  before_action :authenticate_user!
end


def new

	@quest = Quest.new

end

def create
    @quest = Quest.new(quest_params)
  

      if  @quest.save
   
        redirect_to quests_path
      else
        render action: 'new'
      end
     

end

def edit
    @quest = Quest.find(params[:id])

end


def update

    @quest = Quest.find(params[:id])

 
    if  @quest.update(quest_params)
        redirect_to @quest
    else
        render action: 'edit'
    end
end

def show
    @quest = Quest.find(params[:id])
    @players = Player.all
    @units = @quest.units.all


  
end

def destroy
    @quest = Quest.find(params[:id])
    @unit = params[unit]
    @unit.destroy


    redirect_to quest_path(@quest)
end

def index
    @quests = Quest.all
end









	def quest_params
    params.require(:quest).permit(
        :number,
    	:name,
    	:short_discription,
    	:description,
    	:difficulty,
    	:status,
    	:aligment,

    	:quantity,
    	:player,
    	:requirements,
    	:reward,
    	:penalty,
    



    	:have_opposite, 
    	:opposite_description, 
    	:opposite_requirements, 
    	:opposite_reward, 
    	:opposite_players, 
    	:opposite_aligment,


        :soldier,
        :missioner,
        :doctor,
        :cook,
        :seeman,
        :carpenter,
        :parlamenteer,
        :korrehidor,
        :trader,
        :maper,


        :op_soldier,
        :op_missioner,
        :op_doctor,
        :op_cook,
        :op_seeman,
        :op_carpenter,
        :op_parlamenteer,
        :op_korrehidor,
        :op_trader,
        :op_maper,
        :started_at




    	)
	end
end
