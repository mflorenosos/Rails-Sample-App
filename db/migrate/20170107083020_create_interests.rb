class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :name
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
