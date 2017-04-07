class Prize < ApplicationRecord
	belongs_to :tournament
	belongs_to :team

	def self.load_prizes(page = 1, per_page = 10)
    	includes(:tournaments).paginate(:page => page, :per_page => per_page)
  	end

 	def self.prizes_by_id(id)
    	includes(:tournaments).find_by_id(id)  
  	end

end
