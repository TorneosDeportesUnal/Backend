class Modality < ApplicationRecord
  has_many :tournament
  has_many :team
end
