class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_name
      t.text :description
      t.references :prerequisite, null: false, foreign_key: true
      t.integer :credit_hour

      t.timestamps
    end
  end
end
