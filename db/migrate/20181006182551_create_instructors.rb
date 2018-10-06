class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :last
      t.string :middle
      t.string :first
      t.string :email

      t.timestamps
    end
  end
end
