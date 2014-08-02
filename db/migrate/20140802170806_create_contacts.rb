class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, limit: 50
      t.string :email, limit: 75
      t.text :questions

      t.timestamps
    end
  end
end
