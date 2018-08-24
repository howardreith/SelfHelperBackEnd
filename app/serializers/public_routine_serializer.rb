class PublicRoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :include, :exercise1, :reps1, :sets1, :exercise2, :reps2,
  :sets2, :exercise3, :reps3, :sets3, :exercise4, :reps4, :sets4, :exercise5, :reps5, :sets5,
  :exercise6, :reps6, :sets6, :exercise7, :reps7, :sets7, :exercise8, :reps8, :sets8
end
