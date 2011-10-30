class Building < ActiveRecord::Base
  belongs_to :kingdom
  has_many :constructions
end
