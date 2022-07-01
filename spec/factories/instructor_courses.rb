FactoryBot.define do
  factory :instructor_course do
    instructor_id { nil }
    course_id { nil }
    year { "2022-07-01" }
    semester { "MyString" }
  end
end
