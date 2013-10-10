class ContactGroup < ActiveRecord::Base
   attr_accessible :user_id
   validates :user_id, :presence => true

   belongs_to(
   :users,
   :class_name => 'User',
   :foreign_key => :user_id,
   :primary_key => :id
   )

   has_many(
   :contacts,
   :class_name => 'Contact',
   :foreign_key => :group_id,
   :primary_key => :id
   )

end
