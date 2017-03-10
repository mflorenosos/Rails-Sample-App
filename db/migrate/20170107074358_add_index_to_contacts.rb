class AddIndexToContacts < ActiveRecord::Migration[5.0]
  def change
    add_index :contacts, :email
  end
end
