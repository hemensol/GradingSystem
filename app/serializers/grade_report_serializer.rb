class GradeReportSerializer < ActiveModel::Serializer
  attributes :id, :gpa, :academic_status, :year, :semester
  has_one :grade_id
  has_one :approved_by
end
