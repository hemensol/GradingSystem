class CourseSerializer < ActiveModel::Serializer
  attributes :id, :course_code, :course_name, :description, :credit_hour
  has_one :prerequisite
end
