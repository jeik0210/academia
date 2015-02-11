class RemoveCodeFromTeachings < ActiveRecord::Migration
  def change
    remove_column :teachings, :code, :string
  end
end
