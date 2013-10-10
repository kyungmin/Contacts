class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, :presence => true

  has_many    :contacts,
              :class_name => "Contact",
              :primary_key => :id,
              :foreign_key => :user_id

  has_many    :contact_shares,
              :class_name => "ContactShare",
              :primary_key => :id,
              :foreign_key => :user_id,
              :dependent => :destroy

  has_many    :contact_groups,
              :class_name => "ContactGroup",
              :primary_key => :id,
              :foreign_key => :user_id
end
