class JobLabelsController < ApplicationController
  before_action :set_job_label, only: [:show, :update, :destroy]

  # GET /job_labels
  def index
    @job_labels = JobLabel.all

    render json: @job_labels
  end

  # GET /job_labels/1
  def show
    render json: @job_label
  end

  # POST /job_labels
  def create
    @job_label = JobLabel.new(job_label_params)

    if @job_label.save
      render json: @job_label, status: :created, location: @job_label
    else
      render json: @job_label.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_labels/1
  def update
    if @job_label.update(job_label_params)
      render json: @job_label
    else
      render json: @job_label.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_labels/1
  def destroy
    @job_label.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_label
      @job_label = JobLabel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_label_params
      params.require(:job_label).permit(:label_id, :job_id)
    end
end
