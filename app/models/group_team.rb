class GroupTeam < ApplicationRecord
  belongs_to :group
  belongs_to :team
  validates :loses,  numericality: { only_integer: true }
  validates :wins,  numericality: { only_integer: true }
end
