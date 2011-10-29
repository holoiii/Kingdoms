require 'spec_helper'

describe "kingdoms/index.html.erb" do
  before(:each) do
    assign(:kingdoms, [
      stub_model(Kingdom),
      stub_model(Kingdom)
    ])
  end

  it "renders a list of kingdoms" do
    render
  end
end
