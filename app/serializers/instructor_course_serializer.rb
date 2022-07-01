class InstructorCourseSerializer < ActiveModel::Serializer
  attributes :id, :year, :semester
  has_one :instructor_id
  has_one :course_id
end
