require 'spec_helper'

describe "buildings/index.html.erb" do
  before(:each) do
    assign(:buildings, [
      stub_model(Building,
        :amount => 1,
        :build_time => 1,
        :rate => 1,
        :name => "Name",
        :gold_cost => 1,
        :stone_cost => 1,
        :wood_cost => 1,
        :wheat_cost => 1,
        :gem_cost => 1
      ),
      stub_model(Building,
        :amount => 1,
        :build_time => 1,
        :rate => 1,
        :name => "Name",
        :gold_cost => 1,
        :stone_cost => 1,
        :wood_cost => 1,
        :wheat_cost => 1,
        :gem_cost => 1
      )
    ])
  end

  it "renders a list of buildings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
