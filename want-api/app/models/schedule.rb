class Schedule < ApplicationRecord
  belongs_to :want
  has_many :todos
end
