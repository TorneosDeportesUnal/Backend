class Prize < ApplicationRecord
	belongs_to :tournament
	belongs_to :team

	def self.load_prizes()
    	includes(:tournaments)
  	end

 	def self.prizes_by_id(id)
    	includes(:tournaments).find_by_id(id)  
  	end

end
