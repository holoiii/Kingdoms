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
  end
end
