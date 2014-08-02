require 'spec_helper'

describe "proposals/new" do
  before(:each) do
    assign(:proposal, stub_model(Proposal,
      :lead_presenter => "MyString",
      :co_presenter => "MyString",
      :email => "MyString",
      :school => "MyString",
      :credentials => "MyString",
      :presentation_type => "MyString",
      :title => "MyString",
      :summary => "MyText",
      :abstract => "MyText",
      :additional_information => "MyText"
    ).as_new_record)
  end

  it "renders new proposal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proposals_path, "post" do
      assert_select "input#proposal_lead_presenter[name=?]", "proposal[lead_presenter]"
      assert_select "input#proposal_co_presenter[name=?]", "proposal[co_presenter]"
      assert_select "input#proposal_email[name=?]", "proposal[email]"
      assert_select "input#proposal_school[name=?]", "proposal[school]"
      assert_select "input#proposal_credentials[name=?]", "proposal[credentials]"
      assert_select "input#proposal_presentation_type[name=?]", "proposal[presentation_type]"
      assert_select "input#proposal_title[name=?]", "proposal[title]"
      assert_select "textarea#proposal_summary[name=?]", "proposal[summary]"
      assert_select "textarea#proposal_abstract[name=?]", "proposal[abstract]"
      assert_select "textarea#proposal_additional_information[name=?]", "proposal[additional_information]"
    end
  end
end
