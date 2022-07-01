class InstructorCoursesController < ApplicationController
  before_action :set_instructor_course, only: %i[ show update destroy ]

  # GET /instructor_courses
  def index
    @instructor_courses = InstructorCourse.all

    render json: @instructor_courses
  end

  # GET /instructor_courses/1
  def show
    render json: @instructor_course
  end

  # POST /instructor_courses
  def create
    @instructor_course = InstructorCourse.new(instructor_course_params)

    if @instructor_course.save
      render json: @instructor_course, status: :created, location: @instructor_course
    else
      render json: @instructor_course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instructor_courses/1
  def update
    if @instructor_course.update(instructor_course_params)
      render json: @instructor_course
    else
      render json: @instructor_course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instructor_courses/1
  def destroy
    @instructor_course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor_course
      @instructor_course = InstructorCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instructor_course_params
      params.require(:instructor_course).permit(:instructor_id_id, :course_id_id, :year, :semester)
    end
end
