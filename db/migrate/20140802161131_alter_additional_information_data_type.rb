class AlterAdditionalInformationDataType < ActiveRecord::Migration
  def change
    change_column :registrations, :additional_information, :text, :limit => null
  end
end
