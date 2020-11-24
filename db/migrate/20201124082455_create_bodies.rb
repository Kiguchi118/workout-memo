class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.references :user, foreign_key: true
      t.float :weight
      t.float :body_fat_percentage
      t.float :bmi
      t.float :lbm

      t.timestamps
    end
  end
end
