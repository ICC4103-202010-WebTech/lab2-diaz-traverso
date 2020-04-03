# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create(name: "Gianfranco", email: "asd@gmail.com", phone: "123456", password: "123", address: "Robles")
customer2 = Customer.create(name: "Raimundo", email: "pollo@gmail.com", phone: "654321", password: "xd", address: "Robles2")

venue1 = EventVenue.create(name: "Movistar Arena", address: "nose y no importa", capacity: 3000)
venue2 = EventVenue.create(name: "Quinta Vergara", address: "por viña", capacity: 800)
venue3 = EventVenue.create(name: "Intercomunal", address: "la reina", capacity: 5478)

event1 = EventInformation.create(name: "lolapalusa", description: "brigido")
event2 = EventInformation.create(name: "chayane", description: "lo mejor de la vida")
event3 = EventInformation.create(name: "la noche", description: "te lo dice! la noche!")

venue1.event_information << event1
venue2.event_information << event2
venue3.event_information << event3

ticket_type1 = TicketType.create(price: 100000, type_ticket: "Golden")
ticket_type2 = TicketType.create(price: 150000, type_ticket: "VIP")
ticket_type3 = TicketType.create(price: 200000, type_ticket: "Meet & Greet")
ticket_type4 = TicketType.create(price: 30000, type_ticket: "General")
ticket_type5 = TicketType.create(price: 30000, type_ticket: "Cancha")
ticket_type6 = TicketType.create(price: 30000, type_ticket: "Silver")

event1.ticket_types << ticket_type1
event2.ticket_types << ticket_type2
event3.ticket_types << ticket_type3
event1.ticket_types << ticket_type4
event2.ticket_types << ticket_type5
event3.ticket_types << ticket_type6

order1 = TicketOrder.create()
order2 = TicketOrder.create()
order3 = TicketOrder.create()
order4 = TicketOrder.create()

customer1.ticket_orders << order1
customer1.ticket_orders << order2
customer2.ticket_orders << order3
customer2.ticket_orders << order4

ticket_type1.ticket_orders << order1
ticket_type2.ticket_orders << order1
ticket_type4.ticket_orders << order2
ticket_type5.ticket_orders << order2
ticket_type2.ticket_orders << order3
ticket_type3.ticket_orders << order3
ticket_type6.ticket_orders << order4
ticket_type1.ticket_orders << order4
ticket_type2.ticket_orders << order1
ticket_type5.ticket_orders << order2