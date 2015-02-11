class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.integer :ruc
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
