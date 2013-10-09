# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({:name => "kk", :email => "kk@kk.com"})
User.create!({:name => "anna", :email => "anna@anna.com"})
User.create!({:name => "ned", :email => "anna@anna.com"})

Contact.create!({:user_id => 1, :name => "anna", :email => "anna@anna.com"})
Contact.create!({:user_id => 1, :name => "ned", :email => "anna@anna.com"})
Contact.create!({:user_id => 1, :name => "kush", :email => "anna@anna.com"})

Contact.create!({:user_id => 2, :name => "flarnie", :email => "anna@anna.com"})
Contact.create!({:user_id => 2, :name => "asher", :email => "anna@anna.com"})


ContactShare.create!({:user_id => 2, :contact_id => 3})

ContactShare.create!({:user_id => 1, :contact_id => 4})
ContactShare.create!({:user_id => 1, :contact_id => 5})

