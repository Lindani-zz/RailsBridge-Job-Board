class JobsController < ApplicationController
	def index
		if params[:tag]
			@jobs = Job.tagged_with(params[:name])
		else
			@jobs = Job.all
		end
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
		redirect_to jobs_path(@job)
	end
	def destroy
		@job = Job.find(params[:id])
  		@job.destroy
		redirect_to jobs_path
	end
	#Creating a new job entry
	def create
		binding.pry
		@job = Job.new(job_params)
		if @job.save
		  redirect_to jobs_path
		else
          render :new
		end  
	end

	def show
		@job = Job.find(params[:id])
	end

	#Using strong paremeters to limit whatever data our form can submit to our app

	private

	def job_params
	  params.require(:job).permit(:title, :description, :requirements, :name, :tag_list)
	end
end
