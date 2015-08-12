class PlayersController < ApplicationController
	def index
		matches = Player.all_player_matches()
		win_percentage = Player.win_matches().length*100/matches.length
		loss_percentage = 100 - win_percentage
		result = {
			:total_matches => matches,
			:win_percentage => win_percentage,
			:loss_percentage => loss_percentage
		}
		render json: result
	end
end
