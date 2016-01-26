class JobsController < ApplicationController
	def index
		@jobs = Job.all
	end
	def new
		@job = Job.new
	end

	def edit
		@job = Job.find(params[:id])
	end
	def update
		@job = Job.find(params[:id])
  		@job.update_attributes(job_params)
		redirect_to jobs_path
	end
	def destroy
		@job = Job.find(params[:id])
  		@job.destroy
		redirect_to jobs_path
	end
	#Creating a new job entry
	def create
		p "IN THE CREATE METHOD!!!!"
		job = Job.create(job_params)
		p job
		redirect_to jobs_path
	end
	def show
		@job = Job.find(params[:id])
	end

	#Using strong paremeters to limit whatever data our form can submit to our app

	private

	def job_params
	  params.require(:job).permit(:title, :description, :requirements)
	end
end
