class RemoveBorrarFromTeachings < ActiveRecord::Migration
  def change
    remove_column :teachings, :historia, :string
  end
end
