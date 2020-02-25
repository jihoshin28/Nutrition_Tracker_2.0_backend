class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :first_name, :last_name, :image, :age, :diet_type, :weight, :height, :email, :calorie_goal, :bio, :gender, :exercise_posts, :food_posts, :notes, :id
end
