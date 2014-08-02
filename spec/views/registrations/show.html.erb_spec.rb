require 'spec_helper'

describe "registrations/show" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :name => "Name",
      :email => "Email",
      :school => "School",
      :presenter => false,
      :allergies => "Allergies",
      :days_attending => "Days Attending",
      :housing_needed => false,
      :animal_allergies => "Animal Allergies",
      :smoking => false,
      :housing_residents => "Housing Residents",
      :housing_sleep_situation => "Housing Sleep Situation",
      :additional_information => "Additional Information"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/School/)
    rendered.should match(/false/)
    rendered.should match(/Allergies/)
    rendered.should match(/Days Attending/)
    rendered.should match(/false/)
    rendered.should match(/Animal Allergies/)
    rendered.should match(/false/)
    rendered.should match(/Housing Residents/)
    rendered.should match(/Housing Sleep Situation/)
    rendered.should match(/Additional Information/)
  end
end
