class DownwardArrowSerializer < ActiveModel::Serializer
  attributes :id, :autothought1, :distortion1, :response1, :created_at, :updated_at
  has_one :user
end
