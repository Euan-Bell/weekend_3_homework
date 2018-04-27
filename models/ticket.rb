require_relative('../db/sql_runner.rb')
require_relative('film.rb')
require_relative('customer.rb')


class Ticket

  attr_reader :id, :customer_id, :film_id


def initialize(options)
  @id = options['id'].to_i if options['id']
  @user_id = options['user_id'].to_i
  @film_id = options['film_id'].to_i
end

def save()
  sql = "INSERT INTO tickets(
  customer_id, film_id)
  VALUES ($1, $2)
  RETURNING id"
  values = [@customer_id, @film_id]
  ticket = SqlRunner.run( sql, values ).first
  @id = ticket['id'].to_i
end

def self.all()
  sql = "SELECT * FROM tickets"
  ticket_data = SqlRunner.run(sql)
  return Ticket.map_items(ticket_data)
end

def self.map_items(ticket_data)
   result = ticket_data.map { |ticket|
     Ticket.new(ticket)}
   return result
 end

 def update()
    sql = "UPDATE ticket SET (customer_id, film_id) = ($1, $2) WHERE id = $3"
    values = [@user_id, @film_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
 sql = "DELETE FROM tickets"
 SqlRunner.run(sql)
end


end
