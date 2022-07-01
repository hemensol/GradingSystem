class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.string :grade
      t.references :instructor_course_id, null: false, foreign_key: true
      t.references :student_id, null: false, foreign_key: true
      t.references :submission_id, null: false, foreign_key: true
      t.date :date_modified

      t.timestamps
    end
  end
end
