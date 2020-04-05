# README

* Raimundo Enrique Diaz Parada
* Gianfranco Stefano Traverso Prado

### what we did to see if the database worked properly was enter the next commands:
> First, make the migrations, import the seed file and invoke the console with `rails c`
```shell
$ RAILS_ENV=development rake db:migrate
$ RAILS_ENV=development rake db:seed
$ rails c
```
> The following commands are to make sure all the tables were created properly
```shell
$ Customer.all
$ TicketOrder.all
$ TicketType.all
$ EventInformation.all
$ EventVenue.all
```

> The following commands are to make sure the orders have 2 ticket types
```shell
$ o1 = TicketOrder.first
$ o1.ticket_types
```
> The following commands are to make sure the ticket types have 2 orders
```shell
$ t1 = TicketType.first
$ t1.ticket_orders
```
> The following commands are to make sure the events have 2 ticket types
```shell
$ e1 = EventInformation.first
$ e1.ticket_types
```
