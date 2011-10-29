class Kingdom < ActiveRecord::Base
  has_many :resources
  after_create :assign_resources

  private

  def assign_resources
    Resource.create(name: "Gold", amount: 0, kingdom_id: id)
    Resource.create(name: "Stone", amount: 0, kingdom_id: id)
    Resource.create(name: "Wood", amount: 0, kingdom_id: id)
    Resource.create(name: "Gem", amount: 0, kingdom_id: id)
    Resource.create(name: "Wheat", amount: 0, kingdom_id: id)
  end
end
