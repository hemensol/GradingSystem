class CreateRegistrars < ActiveRecord::Migration[7.0]
  def change
    create_table :registrars do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.float :salary

      t.timestamps
    end
  end
end
