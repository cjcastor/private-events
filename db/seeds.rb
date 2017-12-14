# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Rick', email: 'rick@example.com')
User.create!(name: 'Morty', email: 'morty@example.com')
User.create!(name: 'Summer', email: 'summer@example.com')
User.create!(name: 'Jerry', email: 'jerry@example.com')
User.create!(name: 'Beth', email: 'beth@example.com')

Event.create!(name: "Rick's B-day", host_id: "1", event_date: "2018-3-18")
Event.create!(name: "Morty's B-day", host_id: "2", event_date: "2018-4-18")
Event.create!(name: "Summer's B-day", host_id: "3", event_date: "2018-5-17")
Event.create!(name: "Rick's Thanksgiving", host_id: "1", event_date: "2017-1-22")

PartyAttendee.create!(attendee_id: "1", event_id: "1")
PartyAttendee.create!(attendee_id: "2", event_id: "1")
PartyAttendee.create!(attendee_id: "3", event_id: "1")
PartyAttendee.create!(attendee_id: "4", event_id: "1")
PartyAttendee.create!(attendee_id: "5", event_id: "1")

PartyAttendee.create!(attendee_id: "1", event_id: "2")
PartyAttendee.create!(attendee_id: "2", event_id: "2")
PartyAttendee.create!(attendee_id: "3", event_id: "2")

PartyAttendee.create!(attendee_id: "3", event_id: "3")
PartyAttendee.create!(attendee_id: "4", event_id: "3")
PartyAttendee.create!(attendee_id: "5", event_id: "3")

PartyAttendee.create!(attendee_id: "1", event_id: "4")
PartyAttendee.create!(attendee_id: "2", event_id: "4")
