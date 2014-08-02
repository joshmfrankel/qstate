class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :lead_presenter
      t.string :co_presenter
      t.string :email, limit: 75
      t.string :school
      t.string :credentials
      t.string :presentation_type
      t.string :title
      t.text :summary
      t.text :abstract
      t.text :additional_information

      t.timestamps
    end
  end
end
