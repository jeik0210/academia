class Course < ActiveRecord::Base
	has_many :detail_courses
	has_many :students, through: :detail_courses
end
