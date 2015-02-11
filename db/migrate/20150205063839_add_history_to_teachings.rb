class AddHistoryToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :historia, :string
    add_column :teachings, :poder, :string
  end
end
