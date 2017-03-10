class AddGenderToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :gender, :string, limit: 1
  end
end
