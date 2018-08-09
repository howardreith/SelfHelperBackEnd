class ColumMethodSerializer < ActiveModel::Serializer
  attributes :id, :event, :emotion, :autothought, :distortion, :response, :updated_at, :created_at
  has_one :user
end
