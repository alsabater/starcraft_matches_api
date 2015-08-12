class Match < ActiveRecord::Base
	belongs_to :winner, class_name: 'Player'
	belongs_to :loser, class_name: 'Player'

	def self.get_matches(player_id, faction)
		matches = self.joins(:winner).where("winner_id = ?", player_id).where("winner_faction = ? or loser_faction = ?", faction, faction)
	end
end
