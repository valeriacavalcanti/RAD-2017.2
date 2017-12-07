class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.float :nota
      t.float :cre
      t.boolean :selecionado
      t.datetime :form_voluntario
      t.datetime :form_relatorio
      t.references :discipline, foreign_key: true
      t.references :semester, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
