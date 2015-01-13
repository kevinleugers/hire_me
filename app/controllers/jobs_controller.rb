class JobsController < ApplicationController
  before_filter :authenticate_user!
  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job.valid?
      current_user.jobs << @job
      redirect_to dashboard_path
    else
      redirect_to new_job_path
    end
  end

  private

  def job_params
    params.require(:job).permit(
      :title,
      :description
    )
  end
end
