require_relative( '../models/film' )
require_relative( '../models/customer' )
require_relative( '../models/ticket' )

require('pry')

customer1 = Customer.new({ 'name' => 'Paul',
'funds' => '20'})
customer1.save()


customer2 = Customer.new({ 'name' => 'Euan',
'funds' => '15'})
customer2.save()

customer3 = Customer.new({ 'name' => 'Joe',
'funds' => '30'})
customer3.save()


film1 = Film.new({
'title' => 'IT',
'price' => '10'})
film1.save()



film2 = Film.new({
'title' => 'The Shinning',
'price' => '10'})
film2.save()


film3 = Film.new({
'title' => 'Kujo',
'price' => '10'})
film3.save()



ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save()

ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save()

ticket3 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film3.id})
ticket3.save()









binding.pry
nil
