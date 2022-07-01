class InstructorCourse < ApplicationRecord
  belongs_to :instructor_id
  belongs_to :course_id
end
