json.array!(@registrations) do |registration|
  json.extract! registration, :name, :email, :school, :presenter, :allergies, :days_attending, :housing_needed, :animal_allergies, :smoking, :housing_residents, :housing_sleep_situation, :additional_information
  json.url registration_url(registration, format: :json)
end