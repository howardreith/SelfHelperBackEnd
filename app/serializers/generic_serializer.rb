class GenericSerializer < ActiveModel::Serializer
  attributes :id, :activity, :fear_level, :updated_at, :created_at
  has_one :user
end
