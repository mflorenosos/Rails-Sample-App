class CreateContactsInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_interests do |t|
    	t.references :contact, foreign_key:true
    	t.references :interest, foreign_key:true

    	t.timestamps
    end
  end
end
