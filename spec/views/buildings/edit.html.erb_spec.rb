require 'spec_helper'

describe "buildings/edit.html.erb" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :amount => 1,
      :build_time => 1,
      :rate => 1,
      :name => "MyString",
      :gold_cost => 1,
      :stone_cost => 1,
      :wood_cost => 1,
      :wheat_cost => 1,
      :gem_cost => 1
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path(@building), :method => "post" do
      assert_select "input#building_amount", :name => "building[amount]"
      assert_select "input#building_build_time", :name => "building[build_time]"
      assert_select "input#building_rate", :name => "building[rate]"
      assert_select "input#building_name", :name => "building[name]"
      assert_select "input#building_gold_cost", :name => "building[gold_cost]"
      assert_select "input#building_stone_cost", :name => "building[stone_cost]"
      assert_select "input#building_wood_cost", :name => "building[wood_cost]"
      assert_select "input#building_wheat_cost", :name => "building[wheat_cost]"
      assert_select "input#building_gem_cost", :name => "building[gem_cost]"
    end
  end
end
