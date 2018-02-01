class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :descricao
      t.string :abreviacao

      t.timestamps
    end
  end
end
