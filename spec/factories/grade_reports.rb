FactoryBot.define do
  factory :grade_report do
    grade_id { nil }
    gpa { 1.5 }
    academic_status { "MyString" }
    year { "2022-07-01" }
    semester { "MyString" }
    approved_by { nil }
  end
end
