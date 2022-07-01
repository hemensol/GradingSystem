class CreateInstructorCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :instructor_courses do |t|
      t.references :instructor_id, null: false, foreign_key: true
      t.references :course_id, null: false, foreign_key: true
      t.date :year
      t.string :semester

      t.timestamps
    end
  end
end
