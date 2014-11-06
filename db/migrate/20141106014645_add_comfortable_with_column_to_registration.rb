class AddComfortableWithColumnToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :comfortableWith, :string
  end
end
