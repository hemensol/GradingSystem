class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.date :start_date
      t.date :end_date
      t.references :set_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
