require 'spec_helper'

describe Kingdom do
  context "associations" do
    it "should have many resources" do
      kingdom = Kingdom.create
      resource = Resource.create(:name => "Gold", :amount => 5, :kingdom_id => kingdom.to_param)
      kingdom.resources.should_not be_nil
    end
  end
end
