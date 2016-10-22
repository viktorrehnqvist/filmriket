class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  has_and_belongs_to_many :clubs
  
  default_scope { order('created_at DESC') } 
  
  # setting review to inactive before upload is attached
  def access(user)
    self.active = 0
    self.user_id = user.id
    # Unless club is set in form from an admin
    self.club_id = user.club_id unless self.club_id
  end
  
end
