class User < ActiveRecord::Base
  acts_as_authentic
  has_one :kingdom
  after_create :assign_kingdom

  private

  def assign_kingdom
    Kingdom.create(:user_id => id)
  end
end
