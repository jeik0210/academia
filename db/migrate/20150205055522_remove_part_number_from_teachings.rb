class RemovePartNumberFromTeachings < ActiveRecord::Migration
  def change
    remove_column :teachings, :part_number, :string
  end
end
