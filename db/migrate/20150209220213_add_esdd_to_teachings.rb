class AddEsddToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :jeison, :integer
  end
end
