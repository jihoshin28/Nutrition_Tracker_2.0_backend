class CreateExercisePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_posts do |t|
      t.string :name
      t.float :calories
      t.string :image
      t.string :unit
      t.integer :unit_number
      t.integer :user_id
      t.string :note
      t.date :date
      t.string :time

      t.timestamps
    end
  end
end
