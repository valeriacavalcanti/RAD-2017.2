class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
