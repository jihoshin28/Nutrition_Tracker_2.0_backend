class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :diet_type
      t.float :weight
      t.float :height
      t.string :email
      t.string :bio
      t.integer :calorie_goal
      t.string :gender

      t.timestamps
    end
  end
end
