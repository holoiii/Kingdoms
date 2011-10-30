class Kingdom < ActiveRecord::Base
  belongs_to :user
  has_many :resources
  has_many :buildings
  after_create :assign_resources, :assign_buildings

  private

  def assign_resources
    Resource.create(name: "Gold", amount: 0, kingdom_id: id)
    Resource.create(name: "Stone", amount: 0, kingdom_id: id)
    Resource.create(name: "Wood", amount: 0, kingdom_id: id)
    Resource.create(name: "Gem", amount: 0, kingdom_id: id)
    Resource.create(name: "Wheat", amount: 0, kingdom_id: id)
  end

  def assign_buildings
    Building.create(name: "Gold Mine", amount: 0, kingdom_id: id)
    Building.create(name: "Stone Quarry", amount: 0, kingdom_id: id)
    Building.create(name: "Lumber Mill", amount: 0, kingdom_id: id)
    Building.create(name: "Jeweler", amount: 0, kingdom_id: id)
    Building.create(name: "Farm", amount: 0, kingdom_id: id)
  end
end
