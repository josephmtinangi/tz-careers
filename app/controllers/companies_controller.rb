class CompaniesController < ApplicationController
	def new
	end

	def create
		@company = Company.new(company_params)

		@company.save
		redirect_to @company
	end

	private
		def company_params
			params.require(:company).permit(:name, :website, :subdomain, :logo, :description)
		end
end
