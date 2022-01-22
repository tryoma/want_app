class Want < ApplicationRecord
  belongs_to :user
  has_many :dids
  has_many :schedules
  has_many :related_informations
end
