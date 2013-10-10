class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id, :favorite
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

  belongs_to  :contacts,
              :class_name => 'ContactGroup',
              :foreign_key => :group_id,
              :primary_key => :id


  def self.contacts_for_user_id(user_id)
    @contacts = Contact.where(:user_id => user_id)
    @contact_shares = ContactShare.where(:user_id => @contacts.first.user_id)
    @shared_contacts = []
    @contact_shares.each do |contact_share|
      @shared_contacts += Contact.where(:id => contact_share.contact_id)
    end
    @all_contacts = @contacts + @shared_contacts
  end


end
