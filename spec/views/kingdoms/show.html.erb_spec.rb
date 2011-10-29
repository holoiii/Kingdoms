require 'spec_helper'

describe "kingdoms/show.html.erb" do
  before(:each) do
    @kingdom = assign(:kingdom, stub_model(Kingdom))
  end

  it "renders attributes in <p>" do
    render
  end
end
