class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :dni
      t.string :name
      t.string :paternal
      t.string :maternal
      t.string :address
      t.string :mail
      t.string :phone
      t.integer :years

      t.timestamps
    end
  end
end
