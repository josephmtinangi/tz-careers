class JobsController < ApplicationController
	def create
		@company = Company.find(params[:company_id])
		@job = @company.jobs.create(job_params)
		redirect_to company_path(@company)
	end

	private
		def job_params
			params.require(:job).permit(:title, :description)
		end
end
