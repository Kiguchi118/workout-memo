class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.references :user, foreign_key: true
      t.integer :part
      t.string :content
      t.string :memo

      t.timestamps
    end
  end
end
