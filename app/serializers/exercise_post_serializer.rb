class ExercisePostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :calories, :date, :note, :user, :user_id, :image, :created_at, :time
end
