class MatchesController < ApplicationController
	def index
		matches = Match.get_matches(params[:player_id], params[:faction])
		overall_percentage = (matches.length*100/Match.all.length)
		result = {
			:total_matches => matches,
			:win_percentage => overall_percentage
		}
		render json: result
	end
end
