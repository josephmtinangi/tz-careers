class JobsController < ApplicationController
	def index
	end

	def new
		@company = Company.find(params[:company_id])
	end

	def create
		@company = Company.find(params[:company_id])
		@job = @company.jobs.create(job_params)
		redirect_to company_path(@company)
	end

	def destroy
		@company = Company.find(params[:company_id])
		@job = @company.jobs.find(params[:id])
		@job.destroy
		redirect_to company_path(@company)
	end

	private
		def job_params
			params.require(:job).permit(:title, :description)
		end
end
