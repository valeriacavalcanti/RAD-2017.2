class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :abreviacao
      t.datetime :nascimento

      t.timestamps
    end
  end
end
