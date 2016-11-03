class CompaniesController < ApplicationController
	def new
	end

	def create
		@company = Company.new(params[:company])

		@company.save
		redirect_to @company
	end
end
