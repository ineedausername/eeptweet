class Eep < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :post

  #attr_accessible :user_id



  #before_save :date_validator

  #private
  #def date_validator
   # if status == "Posted"
    #  self.date_posted = Time.now
    #end
  #end
end

