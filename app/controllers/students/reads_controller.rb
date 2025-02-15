class Students::ReadsController < Students::ApplicationController
  before_action :set_progress

  def create
    @teachers_textbook = Textbook.find(params[:textbook_id])
    @read = Read.where(teacher_id: current_teacher.id).find_by(progress_id: @progress.id)
    read_check = Read.new(read_params)
    read_check.save
  end

  def destroy
    @teachers_textbook = Textbook.find(params[:textbook_id])
    @read = Read.where(teacher_id: current_teacher.id).find_by(progress_id: @progress.id)
    @read.destroy
  end


  private

  def set_progress
    # binding.pry
    @progress = Progress.find(params[:progress_id])
  end

  def read_params
    params.permit(:read).merge(teacher_id: current_teacher.id, progress_id: @progress.id)
  end
end
