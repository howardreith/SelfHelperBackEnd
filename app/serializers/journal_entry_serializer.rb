class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :starred, :created_at, :updated_at
  has_one :user
end
