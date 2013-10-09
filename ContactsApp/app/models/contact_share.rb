class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id
  validates :contact_id, :presence => true
  validates :user_id, :presence => true

  belongs_to  :contact,
              :class_name => "Contact",
              :primary_key => :id,
              :foreign_key => :contact_id

  belongs_to  :user,
              :class_name => "User",
              :primary_key => :id,
              :foreign_key => :user_id



end
