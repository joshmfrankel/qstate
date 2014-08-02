class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name, limit: 50
      t.string :email, limit: 75
      t.string :school
      t.boolean :presenter
      t.string :allergies
      t.string :days_attending
      t.boolean :housing_needed
      t.string :animal_allergies
      t.boolean :smoking
      t.string :housing_residents
      t.string :housing_sleep_situation
      t.string :additional_information

      t.timestamps
    end
  end
end
