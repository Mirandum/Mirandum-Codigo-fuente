# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Producto.create(referencia: "rj1232",
 descripcion: "hola mundo perdido jejejeje",
 precio: 4524353,
 color: "rojo",
 devuelto: false,
       imagen:" https://image.freepik.com/iconos-gratis/de-reloj-de-forma-circular_318-32781.jpg", tipo: "masculino")

Producto.create(referencia: "123amo",
 descripcion: "amo a edward",
 precio: 4524353,
 color: "rojo",
 devuelto: false,
       imagen:" https://image.freepik.com/iconos-gratis/de-reloj-de-forma-circular_318-32781.jpg", tipo: "femenino")

Producto.create(referencia: "jksahs342",
 descripcion: "hola mundo perdido pero que mierda esta pendejada",
 precio: 4524353,
 color: "rojo",
 devuelto: false,
       imagen:" https://image.freepik.com/iconos-gratis/de-reloj-de-forma-circular_318-32781.jpg" , tipo:"mixto")

Producto.create(referencia: "amo a laura",
 descripcion: "hola mundo perdidasds esta pendejada",
 precio: 4524353,
 color: "rojo", devuelto: false, 
       imagen:" https://image.freepik.com/iconos-gratis/de-reloj-de-forma-circular_318-32781.jpg", tipo:"infantil")