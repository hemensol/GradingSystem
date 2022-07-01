class CreateGradeReports < ActiveRecord::Migration[7.0]
  def change
    create_table :grade_reports do |t|
      t.references :grade_id, null: false, foreign_key: true
      t.float :gpa
      t.string :academic_status
      t.date :year
      t.string :semester
      t.references :approved_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
