class JobsController < ApplicationController
	def index
	end
	def new
		@job = Job.new

	end

	#Creating a new job entry
	def create
		p "iN THE CREATE METHOD!!!!"
		job = Job.create(job_params)
		p job
		redirect_to jobs_path
	end

	#Using strong paremeters to limit whatever data our form can submit to our app

	private

	def job_params
	  params.require(:job).permit(:title, :description)
	end
end
