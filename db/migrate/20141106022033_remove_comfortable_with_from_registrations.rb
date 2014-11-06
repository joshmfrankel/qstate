class RemoveComfortableWithFromRegistrations < ActiveRecord::Migration
  def change
    remove_column :registrations, :comfortableWith, :string
  end
end
