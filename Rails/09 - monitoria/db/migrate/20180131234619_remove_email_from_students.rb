class RemoveEmailFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :email, :string
  end
end
