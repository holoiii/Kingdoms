require 'spec_helper'

describe "kingdoms/new.html.erb" do
  before(:each) do
    assign(:kingdom, stub_model(Kingdom).as_new_record)
  end

  it "renders new kingdom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kingdoms_path, :method => "post" do
    end
  end
end
