class RemoveBorreFromTeachings < ActiveRecord::Migration
  def change
    remove_column :teachings, :poder, :string
  end
end
