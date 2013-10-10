require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html',
#   query_values: { :name => "kk" }
# ).to_s
# puts RestClient.get(url)

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
#
# ).to_s
# puts RestClient.post(url, {:query_values => { :email => "kk" } })

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/5.json',
#   query_values: {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     'something_else' => 'aaahhhhh'
#   }
# ).to_s
# puts RestClient.get(url)

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1.json'
# ).to_s
# puts RestClient.get(url)

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1'
# ).to_s
# #puts RestClient.delete(url).body
#
# puts RestClient.put(url, {:user => { :email=> "kush" }}).body



# #Index
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1/contacts.html'
# ).to_s
# puts RestClient.get(url)
# # #Create
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1/contacts',
#
# ).to_s
# puts RestClient.post(url, {'contact[name]' => 'flarnie', 'contact[email]' => 'fl@gmail.com'} ).body
# #Show
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1/contacts/4'
# ).to_s
# puts RestClient.get(url)
# #pdate
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1/contacts/4'
# ).to_s
# puts RestClient.put(url, {:contact => { :email=> "flarnie@gamil.com" }}).body
#
# #Destroy
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/1/contacts/4'
# ).to_s
# puts RestClient.delete(url).body



#Create
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contact_shares',
#
# ).to_s
# puts RestClient.post(url, :contact_share => {'user_id' => '1', 'contact_id' => '2'} ).body
# #Destroy
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contact_shares/1'
# ).to_s
# puts RestClient.delete(url).body

#Index
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/2/contacts.html'
# ).to_s
# puts RestClient.get(url)


url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/favorite'
).to_s
puts RestClient.get(url)
