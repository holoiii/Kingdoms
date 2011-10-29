require 'spec_helper'

describe "kingdoms/edit.html.erb" do
  before(:each) do
    @kingdom = assign(:kingdom, stub_model(Kingdom))
  end

  it "renders the edit kingdom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kingdoms_path(@kingdom), :method => "post" do
    end
  end
end
