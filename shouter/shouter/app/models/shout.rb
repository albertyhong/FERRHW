class Shout < ActiveRecord::Base
  attr_accessible :shout_to_id, :text, :user_id

  belongs_to :user
end
