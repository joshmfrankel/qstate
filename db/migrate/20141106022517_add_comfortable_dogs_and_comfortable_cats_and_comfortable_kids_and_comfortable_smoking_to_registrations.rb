class AddComfortableDogsAndComfortableCatsAndComfortableKidsAndComfortableSmokingToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :comfortable_dogs, :boolean
    add_column :registrations, :comfortable_cats, :boolean
    add_column :registrations, :comfortable_kids, :boolean
    add_column :registrations, :comfortable_smoking, :boolean
  end
end
