class RecordController < ApplicationController
	before_action :set_patient, only: [:update, :delete]
	def comun
	end

	def index
	end
	def create
		@student = Student.new(student_params)
		@student.save
		respond_to do |format|
			format.html {render text: params}
			format.js
		end
	end
	private
	def student_params
		params.require(:student).permit(:name, :paternal, :maternal, :dni, :sex, :address, :years, :phone)
	end
end
