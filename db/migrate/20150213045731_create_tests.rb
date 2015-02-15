class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :history_clinic
      t.references :patient, index: true
      t.string :occupational
      t.string :enfermedad

      t.timestamps
    end
  end
end
