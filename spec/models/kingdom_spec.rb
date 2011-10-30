require 'spec_helper'

describe Kingdom do
  context "associations" do
    context "resources" do
      before do
        @kingdom = Kingdom.create
      end
      it "should have a gold resource" do
        @kingdom.resources.find_by_name("Gold").should_not be_nil
      end
      it "should have a stone resource" do
        @kingdom.resources.find_by_name("Stone").should_not be_nil
      end
      it "should have a wood resource" do
        @kingdom.resources.find_by_name("Wood").should_not be_nil
      end
      it "should have a gem resource" do
        @kingdom.resources.find_by_name("Gem").should_not be_nil
      end
      it "should have a wheat resource" do
        @kingdom.resources.find_by_name("Wheat").should_not be_nil
      end
    end

    context "buildings" do
      before do
        @kingdom = Kingdom.create
      end
      it "should have a stone quarry building" do
        @kingdom.buildings.find_by_name("Stone Quarry").should_not be_nil
      end
      it "should have a lumber mill building" do
        @kingdom.buildings.find_by_name("Lumber Mill").should_not be_nil
      end
      it "should have a gold mine building" do
        @kingdom.buildings.find_by_name("Gold Mine").should_not be_nil
      end
      it "should have a farm building" do
        @kingdom.buildings.find_by_name("Farm").should_not be_nil
      end
      it "should have a jeweler building" do
        @kingdom.buildings.find_by_name("Jeweler").should_not be_nil
      end
    end
  end
end
