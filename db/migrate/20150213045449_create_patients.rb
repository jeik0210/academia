class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :dni
      t.string :phone
      t.string :home

      t.timestamps
    end
  end
end
