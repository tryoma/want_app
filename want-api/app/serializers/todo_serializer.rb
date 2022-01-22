class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :schedule_id
  belongs_to :schedule
end
