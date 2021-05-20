class Students::TextbooksController < Students::ApplicationController
  before_action :set_students_textbook, only: [:show]

  # GET /students/textbooks or /students/textbooks.json
  def index
    @teachers_textbooks = Textbook.all
  end

  # GET /students/textbooks/1 or /students/textbooks/1.json
  def show
  end

  # GET /students/textbooks/new
  # def new
  #   @students_textbook = Students::Textbook.new
  # end

  # GET /students/textbooks/1/edit
  # def edit
  # end

  # POST /students/textbooks or /students/textbooks.json
  # def create
  #   @students_textbook = Students::Textbook.new(students_textbook_params)

  #   respond_to do |format|
  #     if @students_textbook.save
  #       format.html { redirect_to @students_textbook, notice: "Textbook was successfully created." }
  #       format.json { render :show, status: :created, location: @students_textbook }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @students_textbook.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /students/textbooks/1 or /students/textbooks/1.json
  # def update
  #   respond_to do |format|
  #     if @students_textbook.update(students_textbook_params)
  #       format.html { redirect_to @students_textbook, notice: "Textbook was successfully updated." }
  #       format.json { render :show, status: :ok, location: @students_textbook }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @students_textbook.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /students/textbooks/1 or /students/textbooks/1.json
  # def destroy
  #   @students_textbook.destroy
  #   respond_to do |format|
  #     format.html { redirect_to students_textbooks_url, notice: "Textbook was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_textbook
      @students_textbook = Textbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def students_textbook_params
    #   params.fetch(:students_textbook, {})
    # end
end