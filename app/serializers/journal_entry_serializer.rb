class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :starred, :dateCreated
  has_one :user
end
