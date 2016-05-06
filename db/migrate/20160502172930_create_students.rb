class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name, presence: true, length: { minimum: 8, maximum: 64 }
      t.string :matric_number, presence: true, length: { minimum: 8, maximum: 16 }
      t.integer :year_of_study, presence: true, 
      t.timestamps null: false
    end
  end

  def down
    drop_table :students
  end
end
