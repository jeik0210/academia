class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.date :date_initial
      t.date :date_final
      t.references :type_course, index: true
      t.references :teaching, index: true

      t.timestamps
    end
  end
end
