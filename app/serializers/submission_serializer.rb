class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date
  has_one :set_by
end
