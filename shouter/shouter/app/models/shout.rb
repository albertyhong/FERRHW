class Shout < ActiveRecord::Base
  attr_accessible :shout_to_id, :text, :user_id
  validates :text, :presence => true, :length => { :maximum => 144 }

  belongs_to :user
end
