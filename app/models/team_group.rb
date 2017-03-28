class TeamGroup < ApplicationRecord
  belongs_to :group
  belongs_to :team
  validates :group_loses,  numericality: { only_integer: true }
  validates :group_drwa,  numericality: { only_integer: true }
  validates :group_wins,  numericality: { only_integer: true }
end
