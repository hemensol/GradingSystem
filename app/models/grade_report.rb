class GradeReport < ApplicationRecord
  belongs_to :grade_id
  belongs_to :approved_by
end
