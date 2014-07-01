# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new #user_id = 1
admin.username = 'administrador'
admin.role = 1
admin.email = 'admin@hotmail.com'
admin.password = 'admin123'
admin.password_confirmation = 'admin123'
admin.save!

#usuarios
usuario1 = User.new #user_id = 2
usuario1.username = 'usuario1'
usuario1.role = 2
usuario1.enable = true
usuario1.email = 'usuario1@hotmail.com'
usuario1.password = '12345678'
usuario1.password_confirmation = '12345678'
usuario1.save!


usuario2 = User.new #user_id = 3
usuario2.username = 'usuario2'
usuario2.role = 2
usuario2.enable = true
usuario2.email = 'usuario2@hotmail.com'
usuario2.password = '12345678'
usuario2.password_confirmation = '12345678'
usuario2.save!

#locaciones usuario1

locacion1 = Location.new #location_id = 1
locacion1.name = 'Casa de Campo'
locacion1.city = 'Cochabamba'
locacion1.address = 'Sipe Sipe'
locacion1.user_id = 2
locacion1.save!

locacion2 = Location.new #location_id = 2
locacion2.name = 'Departamento'
locacion2.city = 'La Paz'
locacion2.address = 'Centro'
locacion2.user_id = 2
locacion2.save!

#locaciones usuario2

locacion3 = Location.new #location_id = 3
locacion3.name = 'Casa'
locacion3.city = 'Cochabamba'
locacion3.address = 'Cala Cala'
locacion3.user_id = 3
locacion3.save!

locacion4 = Location.new #location_id = 4
locacion4.name = 'Departamento'
locacion4.city = 'Santa Cruz'
locacion4.address = 'Tercer Anillo'
locacion4.user_id = 3
locacion4.save!

#termostatos usuario1

termostato1 = Thermostat.new #thermostat_id = 1
termostato1.serial = '12345'
termostato1.temperature = 17
termostato1.energy = 0
termostato1.humidity = 0
termostato1.user_id = 2
termostato1.location_id = 1
termostato1.save!

termostato2 = Thermostat.new #thermostat_id = 2
termostato2.serial = '54321'
termostato2.temperature = 24
termostato2.energy = 0
termostato2.humidity = 0
termostato2.user_id = 2
termostato2.location_id = 1
termostato2.save!

termostato3 = Thermostat.new #thermostat_id = 3
termostato3.serial = '56789'
termostato3.temperature = 25
termostato3.energy = 0
termostato3.humidity = 0
termostato3.user_id = 2
termostato3.location_id = 1
termostato3.save!


termostato4 = Thermostat.new #thermostat_id = 4
termostato4.serial = '12121'
termostato4.temperature = 14
termostato4.energy = 0
termostato4.humidity = 0
termostato4.user_id = 2
termostato4.location_id = 2
termostato4.save!

termostato5 = Thermostat.new #thermostat_id = 5
termostato5.serial = '21212'
termostato5.temperature = 23
termostato5.energy = 0
termostato5.humidity = 0
termostato5.user_id = 2
termostato5.location_id = 2
termostato5.save!

termostato6 = Thermostat.new #thermostat_id = 6
termostato6.serial = '23456'
termostato6.temperature = 26
termostato6.energy = 0
termostato6.humidity = 0
termostato6.user_id = 2
termostato6.location_id = 2
termostato6.save!

#thermostatos usuario2

termostato7 = Thermostat.new #thermostat_id = 7
termostato7.serial = '34567'
termostato7.temperature = 23
termostato7.energy = 0
termostato7.humidity = 0
termostato7.user_id = 3
termostato7.location_id = 3
termostato7.save!

termostato8 = Thermostat.new #thermostat_id = 8
termostato8.serial = '45678'
termostato8.temperature = 26
termostato8.energy = 0
termostato8.humidity = 0
termostato8.user_id = 3
termostato8.location_id = 3
termostato8.save!

termostato9 = Thermostat.new #thermostat_id = 9
termostato9.serial = '50505'
termostato9.temperature = 27
termostato9.energy = 0
termostato9.humidity = 0
termostato9.user_id = 3
termostato9.location_id = 3
termostato9.save!

termostato10 = Thermostat.new #thermostat_id = 10
termostato10.serial = '90909'
termostato10.temperature = 17
termostato10.energy = 0
termostato10.humidity = 0
termostato10.user_id = 3
termostato10.location_id = 4
termostato10.save!

termostato11 = Thermostat.new #thermostat_id = 11
termostato11.serial = '91919'
termostato11.temperature = 19
termostato11.energy = 0
termostato11.humidity = 0
termostato11.user_id = 3
termostato11.location_id = 4
termostato11.save!

termostato12 = Thermostat.new #thermostat_id = 12
termostato12.serial = '80808'
termostato12.temperature = 27
termostato12.energy = 0
termostato12.humidity = 0
termostato12.user_id = 3
termostato12.location_id = 4
termostato12.save!


   
