class ArrowSerializer < ActiveModel::Serializer
  attributes :id, :autothought, :distortion, :response, :created_at, :updated_at
  has_one :user
end
