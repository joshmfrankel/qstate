require 'spec_helper'

describe "registrations/edit" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :name => "MyString",
      :email => "MyString",
      :school => "MyString",
      :presenter => false,
      :allergies => "MyString",
      :days_attending => "MyString",
      :housing_needed => false,
      :animal_allergies => "MyString",
      :smoking => false,
      :housing_residents => "MyString",
      :housing_sleep_situation => "MyString",
      :additional_information => "MyString"
    ))
  end

  it "renders the edit registration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", registration_path(@registration), "post" do
      assert_select "input#registration_name[name=?]", "registration[name]"
      assert_select "input#registration_email[name=?]", "registration[email]"
      assert_select "input#registration_school[name=?]", "registration[school]"
      assert_select "input#registration_presenter[name=?]", "registration[presenter]"
      assert_select "input#registration_allergies[name=?]", "registration[allergies]"
      assert_select "input#registration_days_attending[name=?]", "registration[days_attending]"
      assert_select "input#registration_housing_needed[name=?]", "registration[housing_needed]"
      assert_select "input#registration_animal_allergies[name=?]", "registration[animal_allergies]"
      assert_select "input#registration_smoking[name=?]", "registration[smoking]"
      assert_select "input#registration_housing_residents[name=?]", "registration[housing_residents]"
      assert_select "input#registration_housing_sleep_situation[name=?]", "registration[housing_sleep_situation]"
      assert_select "input#registration_additional_information[name=?]", "registration[additional_information]"
    end
  end
end
