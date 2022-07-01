class Grade < ApplicationRecord
  belongs_to :instructor_course_id
  belongs_to :student_id
  belongs_to :submission_id
end
