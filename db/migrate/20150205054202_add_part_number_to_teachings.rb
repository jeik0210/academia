class AddPartNumberToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :part_number, :string
  end
end
