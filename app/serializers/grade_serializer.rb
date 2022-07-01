class GradeSerializer < ActiveModel::Serializer
  attributes :id, :grade, :date_modified
  has_one :instructor_course_id
  has_one :student_id
  has_one :submission_id
end
