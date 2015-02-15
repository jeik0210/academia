class AddGdfToStudent < ActiveRecord::Migration
  def change
    add_column :students, :sex, :boolean
  end
end
