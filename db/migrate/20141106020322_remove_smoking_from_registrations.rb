class RemoveSmokingFromRegistrations < ActiveRecord::Migration
  def change
    remove_column :registrations, :smoking, :boolean
  end
end
