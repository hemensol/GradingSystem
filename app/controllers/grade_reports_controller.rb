class GradeReportsController < ApplicationController
  before_action :set_grade_report, only: %i[ show update destroy ]

  # GET /grade_reports
  def index
    @grade_reports = GradeReport.all

    render json: @grade_reports
  end

  # GET /grade_reports/1
  def show
    render json: @grade_report
  end

  # POST /grade_reports
  def create
    @grade_report = GradeReport.new(grade_report_params)

    if @grade_report.save
      render json: @grade_report, status: :created, location: @grade_report
    else
      render json: @grade_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grade_reports/1
  def update
    if @grade_report.update(grade_report_params)
      render json: @grade_report
    else
      render json: @grade_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grade_reports/1
  def destroy
    @grade_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_report
      @grade_report = GradeReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_report_params
      params.require(:grade_report).permit(:grade_id_id, :gpa, :academic_status, :year, :semester, :approved_by_id)
    end
end
