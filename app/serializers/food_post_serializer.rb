class FoodPostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :calories, :fat, :image, :protein, :carbs, :potassium, :sugar, :sodium, :saturated_fat, :dietary_fiber, :cholesterol, :note, :date, :meal, :user, :user_id, :created_at, :time

end
