FactoryBot.define do
  factory :grade do
    grade { "MyString" }
    instructor_course_id { nil }
    student_id { nil }
    submission_id { nil }
    date_modified { "2022-07-01" }
  end
end
