class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :title, :want_id
  belongs_to :want
end
