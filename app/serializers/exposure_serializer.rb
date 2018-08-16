class ExposureSerializer < ActiveModel::Serializer
  attributes :id, :action, :prediction, :actual, :satisfaction, :updated_at, :created_at
  has_one :user
end
