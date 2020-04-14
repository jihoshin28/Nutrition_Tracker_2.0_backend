class WeightSerializer
  include FastJsonapi::ObjectSerializer
  attributes :current_weight, :date, :user_id
end
