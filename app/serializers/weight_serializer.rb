class WeightSerializer
  include FastJsonapi::ObjectSerializer
  attributes :weight, :date
end
