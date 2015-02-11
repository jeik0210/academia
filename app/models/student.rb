class Student < ActiveRecord::Base
	has_many :detail_courses
	has_many :courses, through: :detail_courses
end
