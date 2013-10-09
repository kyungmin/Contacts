class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id
  validates :name, :presence => true
  validates :email,  :presence => true
  validates :user_id,  :presence => true

  belongs_to  :user,
              :class_name => "User",
              :primary_key => :id,
              :foreign_key => :user_id

  has_many    :contact_shares,
              :class_name => "ContactShare",
              :primary_key => :id,
              :foreign_key => :contact_id,
              :dependent => :destroy


end
