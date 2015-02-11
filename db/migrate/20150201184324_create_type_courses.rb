class CreateTypeCourses < ActiveRecord::Migration
  def change
    create_table :type_courses do |t|
      t.string :duration
      t.text :program
      t.string :title
      t.string :code

      t.timestamps
    end
  end
end
