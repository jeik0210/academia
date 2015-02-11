class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.string :dni
      t.string :name
      t.string :paternal
      t.string :maternal
      t.string :address
      t.integer :phone
      t.string :mail
      t.string :range

      t.timestamps
    end
  end
end
