require 'spec_helper'

describe "evenements/edit" do
  before(:each) do
    @evenement = assign(:evenement, stub_model(Evenement,
      :title => "MyString",
      :content => "MyText",
      :place => "MyString"
    ))
  end

  it "renders the edit evenement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => evenements_path(@evenement), :method => "post" do
      assert_select "input#evenement_title", :name => "evenement[title]"
      assert_select "textarea#evenement_content", :name => "evenement[content]"
      assert_select "input#evenement_place", :name => "evenement[place]"
    end
  end
end
