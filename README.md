# README

* Raimundo Enrique Diaz Parada
* Gianfranco Stefano Traverso Prado

- what we did to see if the database worked properly was enter the next commands:

$ RAILS_ENV=development rake db:migrate
$ RAILS_ENV=development rake db:seed
$ rails c

# The following commands are to make sure all the tables were created properly
$ Customer.all
$ TicketOrder.all
$ TicketType.all
$ EventInformation.all
$ EventVenue.all
# The following commands are to make sure the orders have 2 ticket types
$ o1 = TicketOrder.first
$ o1.ticket_types
# The following commands are to make sure the ticket types have 2 orders
$ t1 = TicketType.first
$ t1.ticket_orders
# The following commands are to make sure the events have 2 ticket types
$ e1 = EventInformation.first
$ e1.ticket_types
