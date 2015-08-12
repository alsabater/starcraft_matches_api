class Player < ActiveRecord::Base
	def self.all_player_matches
		all_matches = Match.where("winner_id = ? or loser_id = ?", 2, 2)
	end

	def self.win_matches
		win_matches = Match.where("winner_id = ?", 2)
	end
end
