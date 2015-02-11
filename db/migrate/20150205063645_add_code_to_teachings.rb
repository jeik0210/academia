class AddCodeToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :code, :string
  end
end
