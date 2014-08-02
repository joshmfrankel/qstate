require 'spec_helper'

describe "registrations/index" do
  before(:each) do
    assign(:registrations, [
      stub_model(Registration,
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
      ),
      stub_model(Registration,
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
      )
    ])
  end

  it "renders a list of registrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Allergies".to_s, :count => 2
    assert_select "tr>td", :text => "Days Attending".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Animal Allergies".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Housing Residents".to_s, :count => 2
    assert_select "tr>td", :text => "Housing Sleep Situation".to_s, :count => 2
    assert_select "tr>td", :text => "Additional Information".to_s, :count => 2
  end
end
