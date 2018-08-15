class DownwardArrowSerializer < ActiveModel::Serializer
  attributes :id, :autothought2, :autothought1, :distortion1, :response1, :created_at,
  :updated_at, :distortion2, :response2, :autothought3,
  :distortion3, :response3, :autothought4, :distortion4, :response4,
  :autothought5, :distortion5, :response5, :autothought6, :distortion6,
  :response6, :autothought7, :distortion7, :response7, :autothought8,
  :distortion8, :response8, :autothought9, :distortion9, :response9,
  :autothought10, :distortion10, :response10, :autothought11, :distortion11,
  :response11, :autothought12, :distortion12, :response12, :autothought13,
  :distortion13, :response13, :autothought14, :distortion14, :response14,
  :autothought15, :distortion15, :response15, :autothought16, :distortion16,
  :response16, :autothought17, :distortion17, :response17, :autothought18,
  :distortion18, :response18, :autothought19, :distortion19, :response19,
  :autothought20, :distortion20, :response20
  has_one :user
end
