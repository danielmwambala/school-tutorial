class DobToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :dob, :string
    add_column :students, :grade, :integer
  end
end
