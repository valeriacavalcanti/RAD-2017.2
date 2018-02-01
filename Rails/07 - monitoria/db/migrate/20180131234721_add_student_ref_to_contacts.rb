class AddStudentRefToContacts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contacts, :student, foreign_key: true
  end
end
