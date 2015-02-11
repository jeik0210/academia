class CreateDetailCourses < ActiveRecord::Migration
  def change
    create_table :detail_courses do |t|
      t.float :nota
      t.references :student, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
