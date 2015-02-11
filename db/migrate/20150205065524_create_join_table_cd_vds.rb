class CreateJoinTableCdVds < ActiveRecord::Migration
  def change
    create_join_table :teachings, :courses do |t|
      # t.index [:teaching_id, :course_id]
      # t.index [:course_id, :teaching_id]
    end
  end
end
