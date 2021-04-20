class QuestsController < ApplicationController




def new

	@quest = Quest.new

end

def create
    @form = Form.new(form_params)
  

      if  @quest.save
   
        redirect_to quests_path
      else
        render action: 'new'
      end
     

end

def edit

end

def show

end










	def quest_params
    params.require(:uest).permit(
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
    	:opposite_aligment

    	)
	end
end
