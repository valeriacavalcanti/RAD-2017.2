class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :tipo
      t.datetime :data
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
