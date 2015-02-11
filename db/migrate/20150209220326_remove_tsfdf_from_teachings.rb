class RemoveTsfdfFromTeachings < ActiveRecord::Migration
  def change
    remove_column :teachings, :jeison, :integer
  end
end
