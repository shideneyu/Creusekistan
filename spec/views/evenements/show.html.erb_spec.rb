require 'spec_helper'

describe "evenements/show" do
  before(:each) do
    @evenement = assign(:evenement, stub_model(Evenement,
      :title => "Title",
      :content => "MyText",
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Place/)
  end
end
