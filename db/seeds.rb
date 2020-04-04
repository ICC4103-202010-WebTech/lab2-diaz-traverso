# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
customer1 = Customer.create(name: "Gianfranco", email: "asd@gmail.com", phone: "123456", password: "123", address: "Robles")
customer2 = Customer.create(name: "Raimundo", email: "pollo@gmail.com", phone: "654321", password: "xd", address: "Robles2")

venue1 = EventVenue.create(name: "Movistar Arena", address: "nose y no importa", capacity: 3000)
venue2 = EventVenue.create(name: "Quinta Vergara", address: "por viña", capacity: 800)
venue3 = EventVenue.create(name: "Intercomunal", address: "la reina", capacity: 5478)

event1 = EventInformation.create(name: "lolapalusa", description: "brigido")
event2 = EventInformation.create(name: "chayane", description: "lo mejor de la vida")
event3 = EventInformation.create(name: "la noche", description: "te lo dice!, la noche!")

venue1.event_informations << event1
venue2.event_informations << event2
venue3.event_informations << event3

order1 = TicketOrder.create()
order2 = TicketOrder.create()
order3 = TicketOrder.create()
order4 = TicketOrder.create()

customer1.ticket_orders << order1
customer1.ticket_orders << order2
customer2.ticket_orders << order3
customer2.ticket_orders << order4

ticket_type1 = TicketType.create(price: 100000, description: "Golden")
ticket_type2 = TicketType.create(price: 150000, description: "VIP")
ticket_type3 = TicketType.create(price: 200000, description: "Meet & Greet")
ticket_type4 = TicketType.create(price: 30000, description: "General")
ticket_type5 = TicketType.create(price: 30000, description: "Cancha")
ticket_type6 = TicketType.create(price: 30000, description: "Silver")

event1.ticket_types << ticket_type1
event2.ticket_types << ticket_type2
event3.ticket_types << ticket_type3
event1.ticket_types << ticket_type4
event2.ticket_types << ticket_type5
event3.ticket_types << ticket_type6

order_type1 = OrderType.create(ticket_type: ticket_type1, ticket_order: order1)
order_type2 = OrderType.create(ticket_type: ticket_type2, ticket_order: order1)
order_type3 = OrderType.create(ticket_type: ticket_type3, ticket_order: order2)
order_type4 = OrderType.create(ticket_type: ticket_type4, ticket_order: order2)
order_type5 = OrderType.create(ticket_type: ticket_type5, ticket_order: order3)
order_type6 = OrderType.create(ticket_type: ticket_type6, ticket_order: order3)
order_type7 = OrderType.create(ticket_type: ticket_type1, ticket_order: order4)
order_type8 = OrderType.create(ticket_type: ticket_type4, ticket_order: order4)
