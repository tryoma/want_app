class RelatedInformationSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :want_id
  belongs_to :want
end
