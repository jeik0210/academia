# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
TypeCourse.create(duration: '2 meses', program: 'orientado a publico en general',title: 'ensamblaje de pc',code: 'A001')
TypeCourse.create(duration: '4 meses', program: 'orientado a studiantes universitarios',title: 'modelamiento de datos',code: 'A002')
TypeCourse.create(duration: '1 mes', program: 'orientado a publico en general',title: 'oratoria',code: 'A003')
TypeCourse.create(duration: '4 meses', program: 'orientado a estudiantes en general',title: 'programacion en java',code: 'A004')
TypeCourse.create(duration: '1 año', program: 'orientado a publico en general',title: 'analista de sistemas',code: 'A005')

Teaching.create(dni: '70068810',name: 'jeison',paternal: 'castro',maternal: 'sairitupac',address: 'Asc. Santa Rosa de Lima segunta etapa N-1 Parcona',phone: '975709016',mail: 'jeisoncastro2@gmail.com',range: 'ingeniero de sistemas')
Teaching.create(dni: '70128310',name: 'juan',paternal: 'castro',maternal: 'Martinez',address: 'Av. los Maestors N° 576 Ica',phone: '975769416',mail: 'samircastro2@gmail.com',range: 'ingeniero mecanico')
Teaching.create(dni: '71018810',name: 'luis',paternal: 'arango',maternal: 'sairitupac',address: 'el Pino N° 123 parcona',phone: '976709116',mail: 'luis21@gmail.com',range: 'ingeniero electrico')
=end
