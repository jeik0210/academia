class Student < ActiveRecord::Base
	has_many :detail_courses, dependent: :destroy
	has_many :courses, through: :detail_courses
	before_save :up_full_name

	validates :name, :paternal, :maternal, :dni, :years ,presence: {message: 'no puede estar en blanco'}
	validates :sex , inclusion: {in: [true,false], message: 'tiene valores no aceptables.'}
	validates :dni, :phone,numericality: {message: 'no es un numero'}
	validates :dni, uniqueness: {message: 'ya existe'}
	validates :dni, length: {is: 8, message: 'tiene numero errado de caracteres'}
	def full_name
		paternal.to_s + "" + maternal.to_s + "" + name.to_s
	end
	def up_full_name
		self.name = self.name.upcase
		self.paternal = self.paternal.upcase
		self.maternal = self.maternal.upcase
	end
end
