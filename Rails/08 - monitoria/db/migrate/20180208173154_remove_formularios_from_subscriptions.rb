class RemoveFormulariosFromSubscriptions < ActiveRecord::Migration[5.1]
  def change
    remove_column :subscriptions, :form_voluntario, :datetime
    remove_column :subscriptions, :form_relatorio, :datetime
  end
end
