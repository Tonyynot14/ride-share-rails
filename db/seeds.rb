# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Organization.create(name: "Durham Rescue Mission", street: "100 Miami Blvd", city: "Durham", state: "North Carolina", zip: "27709")
Organization.create(name: "Urban Ministires", street: "100 Miami Blvd", city: "Durham", state: "North Carolina", zip: "27709")
User.create(email: "admin@gmail.com", password: "password",organization_id: 1)
User.create(email: "admin1@gmail.com", password: "password",organization_id: 2)



Driver.create(organization_id: "1", first_name: "Teddy", last_name: "Ruby", phone: "4086948508", email: "ejr25@duke.edu", password: "password", password_confirmation: "password")
Driver.create(organization_id: "1", first_name: "John", last_name: "Smith", phone: "4362484055", email: "j.smith@gmail.com", password: "password", password_confirmation: "password")
Driver.create(organization_id: "1", first_name: "Katie", last_name: "Jones", phone: "92986948508", email: "katie@duke.edu", password: "password", password_confirmation: "password")
Driver.create(organization_id: "2", first_name: "Sarah", last_name: "Kim", phone: "4029348508", email: "Sarah.Kim@yahoo.com", password: "password", password_confirmation: "password")

Vehicle.create(driver_id: "1", car_make: "Toyota", car_model: "Tacoma", car_color: "Silver", car_year: "2010", car_plate: "ZQWOPQ", seat_belt_num: "4", insurance_provider: "Geico", insurance_start: "2019-02-19", insurance_stop: "2020-02-19" )
Vehicle.create(driver_id: "2",car_make: "Toyota", car_model: "Camry", car_color: "Blue", car_year: "2010", car_plate: "ZQWOPQ", seat_belt_num: "4", insurance_provider: "Geico", insurance_start: "2019-01-19", insurance_stop: "2020-01-19")
Vehicle.create(driver_id: "3", car_make: "Honda", car_model: "Civic", car_color: "Black", car_year: "2010", car_plate: "ZQWOPQ", seat_belt_num: "4", insurance_provider: "Geico", insurance_start: "2019-03-19", insurance_stop: "2020-03-19")
Vehicle.create(driver_id: "4", car_make: "Nissan", car_model: "Altima", car_color: "Silver", car_year: "2010", car_plate: "ZQWOPQ", seat_belt_num: "4", insurance_provider: "Geico", insurance_start: "2019-05-19", insurance_stop: "2020-05-19")



Rider.create(organization_id: "1", first_name: "Katelyn", last_name: "Splint" , phone: "9293842930", email: "ks@duke.edu", password: "password", password_confirmation: "password")
Rider.create(organization_id: "1", first_name: "James", last_name: "Cage" , phone: "3292842339",  email: "cage@gmail.com", password: "password", password_confirmation: "password")
Rider.create(organization_id: "1", first_name: "Mary", last_name: "Young" , phone: "52934542930",  email: "myoung@yahoo.com", password: "password", password_confirmation: "password")
Rider.create(organization_id: "2", first_name: "Jim", last_name: "Free" , phone: "9223842200",  email: "free_j@gmail.com", password: "password", password_confirmation: "password")



Location.create(street: "507 E Knox", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "410 Liberty Street", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "1824 Constitution Ct", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "2200 Anderson", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "923 Oregon", city: "Durham", state: "NC", zip: "27709")
Location.create(street: "2938 Rigsbee", city: "Durham", state: "NC", zip: "27708")
Location.create(street: "394 Alexander", city: "Durham", state: "NC", zip: "277054")
Location.create(street: "1830 Pacific Ave", city: "Durham", state: "NC", zip: "27710")
Location.create(street: "394 Broadway Ave", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "293 Erwin", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "123 Road way", city: "Durham", state: "NC", zip: "27705")
Location.create(street: "840 Hillsborough" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "2200 Erwin" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "203 Club Ave." , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "2938 Main Street" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "123 Row Way" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "3842 Kennedy Lane" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "2303 Sandy Street" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "30 New Drive" , city: "Durham", state: "NC", zip: "27705")
Location.create(street: "101 Erwin" , city: "Durham", state: "NC", zip: "27705")










Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-19 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "pending")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-22 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "pending")

Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-23 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "approved")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-11 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "approved")

Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-19 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "scheduled")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-22 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "scheduled")
Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-23 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "scheduled")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-11 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "scheduled")


Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-19 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "matched")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-22 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "requested")
Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-23 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "requested")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-11 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "completed")



Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-20 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "pending")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-23 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "pending")

Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-24 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "approved")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-14 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "approved")

Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-20 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "scheduled")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-23 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "scheduled")
Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-24 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "scheduled")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-15 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "scheduled")


Ride.create(organization_id: "1", rider_id: "1" , driver_id: "1" , pick_up_time: "2019-02-22 15:30:00" , start_location_id: "5", end_location_id: "12", reason: "Interview", status: "matched")
Ride.create(organization_id: "1", rider_id: "2" , driver_id: "2" , pick_up_time: "2019-02-25 08:30:00" ,   start_location_id: "6", end_location_id: "14", reason: "Doctor's appointment", status: "requested")
Ride.create(organization_id: "1", rider_id: "3" , driver_id: "3" , pick_up_time: "2019-02-25 12:15:00" ,  start_location_id: "7", end_location_id: "15", reason: "Haircut", status: "requested")
Ride.create(organization_id: "2", rider_id: "4" , driver_id: "4" , pick_up_time: "2019-03-14 14:30:00" , start_location_id: "8", end_location_id: "13", reason: "Teacher Conference", status: "completed")






Token.create(rider_id: "1", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "1", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "1", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "2", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "2", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "2", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "3", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "3", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "4", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)
Token.create(rider_id: "4", created_at: "2019-02-19 12:30" , expires_at: "2019-05-19 12:30",  used_at: nil, is_valid: true)






ScheduleWindow.create(driver_id: "1", start_date: "2019-3-4", end_date: "2020-3-9", start_time: "2019-03-04 10:30:00", end_time: "2019-03-04 12:30:00", location_id: "1", is_recurring: true)
ScheduleWindow.create(driver_id: "1", start_date: "2019-3-5", end_date: "2020-3-10", start_time: "2019-03-05 12:30:00", end_time: "2019-03-05 16:30:00", location_id: "1", is_recurring: true)
ScheduleWindow.create(driver_id: "1", start_date: "2019-3-7", end_date: "2019-3-12", start_time: "2019-03-07 09:00:00", end_time: "2019-03-07 13:00:00", location_id: "2", is_recurring: true)
ScheduleWindow.create(driver_id: "1", start_date: "2019-3-8", end_date: "2020-3-13", start_time: "2019-03-08 10:30:00", end_time: "2019-03-08 10:30:00", location_id: "3", is_recurring: true)

ScheduleWindow.create(driver_id: "2", start_date: "2019-3-4", end_date: "2020-3-9", start_time: "2019-03-04 10:30:00", end_time: "2019-03-04 12:30:00", location_id: "4", is_recurring: true)
ScheduleWindow.create(driver_id: "2", start_date: "2019-3-4", end_date: "2020-3-9", start_time: "2019-03-04 14:30:00", end_time: "2019-03-04 16:30:00",location_id: "4",  is_recurring: true)
ScheduleWindow.create(driver_id: "2", start_date: "2019-3-8", end_date: "2019-3-12", start_time: "2019-03-08 11:00:00", end_time: "2019-03-08 15:00:00", location_id: "4", is_recurring: true)
ScheduleWindow.create(driver_id: "2", start_date: "2019-3-9", end_date: "2020-3-13", start_time: "2019-03-09 12:30:00", end_time: "2019-03-09 17:30:00", location_id: "4", is_recurring: true)

ScheduleWindow.create(driver_id: "3", start_date: "2019-3-4", end_date: "2020-3-9", start_time: "2019-03-04 10:30:00", end_time: "2019-03-04 12:00:00", location_id: "5", is_recurring: true)
ScheduleWindow.create(driver_id: "3", start_date: "2019-3-5", end_date: "2020-3-10", start_time: "2019-03-05 12:30:00", end_time: "2019-03-05 16:30:00",location_id: "5",  is_recurring: true)
ScheduleWindow.create(driver_id: "3", start_date: "2019-3-6", end_date: "2019-3-12", start_time: "2019-03-06 09:00:00", end_time: "2019-03-06 12:00:00", location_id: "5", is_recurring: true)
ScheduleWindow.create(driver_id: "3", start_date: "2019-3-6", end_date: "2020-3-13", start_time: "2019-03-06 14:30:00", end_time: "2019-03-06 17:30:00", location_id: "5", is_recurring: true)

ScheduleWindow.create(driver_id: "4", start_date: "2019-3-9", end_date: "2020-3-9", start_time: "2019-03-09 10:00:00", end_time: "2019-03-09 12:30:00", location_id: "6", is_recurring: true)
ScheduleWindow.create(driver_id: "4", start_date: "2019-3-9", end_date: "2020-3-10", start_time: "2019-03-09 14:00:00", end_time: "2019-03-09 16:30:00", location_id: "6", is_recurring: true)
ScheduleWindow.create(driver_id: "4", start_date: "2019-3-10", end_date: "2019-3-12", start_time: "2019-03-10 09:00:00", end_time: "2019-03-10 12:30:00", location_id: "7", is_recurring: true)
ScheduleWindow.create(driver_id: "4", start_date: "2019-3-10", end_date: "2020-3-13", start_time: "2019-03-10 14:30:00", end_time: "2019-03-10 18:00:00", location_id: "8", is_recurring: true)


ScheduleWindow.create(driver_id: "1", start_date: "2019-3-6", end_date: "2020-3-6", start_time: "2019-03-06 10:30:00", end_time: "2019-03-06 12:00:00", location_id: "1", is_recurring: false)
ScheduleWindow.create(driver_id: "1", start_date: "2019-3-13", end_date: "2020-3-13", start_time: "2019-03-13 12:30:00", end_time: "2019-03-13 16:30:00", location_id: "1", is_recurring: false)

ScheduleWindow.create(driver_id: "2", start_date: "2019-3-7", end_date: "2019-3-7", start_time: "2019-03-07 09:00:00", end_time: "2019-03-07 12:00:00", location_id: "4", is_recurring: false)
ScheduleWindow.create(driver_id: "2", start_date: "2019-3-14", end_date: "2020-3-14", start_time: "2019-03-14 14:30:00", end_time: "2019-03-14 17:30:00", location_id: "4", is_recurring: false)

ScheduleWindow.create(driver_id: "3", start_date: "2019-3-8", end_date: "2020-3-8", start_time: "2019-03-08 10:00:00", end_time: "2019-03-08 12:30:00", location_id: "5", is_recurring: false)
ScheduleWindow.create(driver_id: "3", start_date: "2019-3-15", end_date: "2020-3-15", start_time: "2019-03-15 14:00:00", end_time: "2019-03-15 16:30:00", location_id: "5", is_recurring: false)

ScheduleWindow.create(driver_id: "4", start_date: "2019-3-11", end_date: "2019-3-11", start_time: "2019-03-11 09:00:00", end_time: "2019-03-11 12:30:00", location_id: "6", is_recurring: false)
ScheduleWindow.create(driver_id: "4", start_date: "2019-3-12", end_date: "2020-3-12", start_time: "2019-03-12 14:30:00", end_time: "2019-03-12 18:00:00", location_id: "7", is_recurring: false)




RecurringPattern.create(schedule_window_id: "1", day_of_week: "1")
RecurringPattern.create(schedule_window_id: "2", day_of_week: "2")
RecurringPattern.create(schedule_window_id: "3", day_of_week: "4")
RecurringPattern.create(schedule_window_id: "4", day_of_week: "5")

RecurringPattern.create(schedule_window_id: "5", day_of_week: "1")
RecurringPattern.create(schedule_window_id: "6", day_of_week: "1")
RecurringPattern.create(schedule_window_id: "7", day_of_week: "5")
RecurringPattern.create(schedule_window_id: "8", day_of_week: "6")

RecurringPattern.create(schedule_window_id: "9", day_of_week: "1")
RecurringPattern.create(schedule_window_id: "10", day_of_week: "2")
RecurringPattern.create(schedule_window_id: "11", day_of_week: "3")
RecurringPattern.create(schedule_window_id: "12", day_of_week: "3")

RecurringPattern.create(schedule_window_id: "13", day_of_week: "6")
RecurringPattern.create(schedule_window_id: "14", day_of_week: "6")
RecurringPattern.create(schedule_window_id: "15", day_of_week: "0")
RecurringPattern.create(schedule_window_id: "16", day_of_week: "0")


LocationRelationship.create(location_id: "1", driver_id: "1", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "2", driver_id: "1", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "3", driver_id: "1", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "4", driver_id: "1", rider_id: nil, organization_id: nil)

LocationRelationship.create(location_id: "5", driver_id: nil, rider_id: "1", organization_id: nil)
LocationRelationship.create(location_id: "6", driver_id: nil, rider_id: "2", organization_id: nil)
LocationRelationship.create(location_id: "7", driver_id: nil, rider_id: "3", organization_id: nil)
LocationRelationship.create(location_id: "8", driver_id: nil, rider_id: "4", organization_id: nil)

LocationRelationship.create(location_id: "9", driver_id: nil, rider_id: nil, organization_id: "1")
LocationRelationship.create(location_id: "10", driver_id: nil, rider_id: nil, organization_id: "2")

LocationRelationship.create(location_id: "11", driver_id: "1", rider_id: nil, organization_id: nil)

LocationRelationship.create(location_id: "12", driver_id: nil, rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "13", driver_id: nil, rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "14", driver_id: nil, rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "15", driver_id: nil, rider_id: nil, organization_id: nil)




LocationRelationship.create(location_id: "16", driver_id: "2", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "17", driver_id: "3", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "18", driver_id: "3", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "19", driver_id: "3", rider_id: nil, organization_id: nil)
LocationRelationship.create(location_id: "10", driver_id: "4", rider_id: nil, organization_id: nil)






# ScheduleWindowException(schedule_window_id: "1", is_canceled: true)
