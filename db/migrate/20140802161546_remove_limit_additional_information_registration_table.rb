class RemoveLimitAdditionalInformationRegistrationTable < ActiveRecord::Migration
  def change
    change_column :registrations, :additional_information, :text, :limit => nil
  end
end
