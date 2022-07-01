FactoryBot.define do
  factory :course do
    course_code { "MyString" }
    course_name { "MyString" }
    description { "MyText" }
    prerequisite { nil }
    credit_hour { 1 }
  end
end
