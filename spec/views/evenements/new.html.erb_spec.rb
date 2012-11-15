require 'spec_helper'

describe "evenements/new" do
  before(:each) do
    assign(:evenement, stub_model(Evenement,
      :title => "MyString",
      :content => "MyText",
      :place => "MyString"
    ).as_new_record)
  end

  it "renders new evenement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => evenements_path, :method => "post" do
      assert_select "input#evenement_title", :name => "evenement[title]"
      assert_select "textarea#evenement_content", :name => "evenement[content]"
      assert_select "input#evenement_place", :name => "evenement[place]"
    end
  end
end
