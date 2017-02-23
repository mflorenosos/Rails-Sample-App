class RemoveContactIdFromInterests < ActiveRecord::Migration[5.0]
  def change
  	remove_column :interests, :contact_id
  end
end
