# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'create admin....'
User.create(name:'admin', role:'admin',email:'admin@gmail.com', password:'admin123',password_confirmation:'admin123')
puts 'admin created!'

puts 'create categories....'
Category.create([
    {
  categname:'Toyota',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677574475/motorbike/TOYOTA-LOGO_ey8dgo.jpg',
  description:'Toyota Motor Corporation is a Japanese multinational automotive manufacturer headquartered in Toyota City, Aichi, Japan.'
 },
    {
  categname:'BMW',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677574475/motorbike/BMW-Logo_lppmht.png',
  description:'BMW, is a German multinational manufacturer of luxury vehicles and motorcycles headquartered in Munich, Bavaria.'
 },
    {
  categname:'Benz',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/download_uhvbba.jpg',
  description:'Benz, is a German luxury and commercial vehicle automotive brand established in 1926.'
 },
    {
  categname:'Honda',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/honda_q1wcfo.jpg',
  description:'Honda Motor Co., Ltd. is a Japanese public multinational conglomerate manufacturer of automobiles, motorcycles, and power equipment, headquartered in Minato, Tokyo, Japan.'
 },
    {
  categname:'Suzuki',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/suzuki_csmsyd.jpg',
  description:'Suzuki Motor Corporation is a Japanese multinational corporation headquartered in Minami-ku, Hamamatsu, Japan. Suzuki manufactures automobiles, motorcycles, all-terrain vehicles, outboard marine engines, wheelchairs and a variety of other small internal combustion engines.'
 },
    {
  categname:'TVS',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/tvs_j8vew2.jpg',
  description:'TVS Motor Company is an Indian multinational motorcycle manufacturer headquartered in Chennai. It is the third largest motorcycle company in India in terms of revenue. The company has annual sales of three million units and an annual production capacity of over four million vehicles.'
 },
    {
  categname:'Triumph',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/Triumph-Logo_mn6nmo.png',
  description:'Triumph Motorcycles Ltd is the largest UK-owned motorcycle manufacturer, established in 1983 by John Bloor after the original company Triumph Engineering went into receivership.'
 },
    {
  categname:'Piaggio',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578135/motorbike/Piaggio-logo_gbjjtu.png',
  description:'Piaggio & C. SpA is an Italian motor vehicle manufacturer, which produces a range of two-wheeled motor vehicles and compact commercial vehicles under seven brands: Piaggio, Vespa, Gilera, Aprilia, Moto Guzzi, Derbi, and Scarabeo. Its corporate headquarters are located in Pontedera, Italy.'
 },
    {
  categname:'Aprilia',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578134/motorbike/images_tjgj5x.png',
  description:'Aprilia is an Italian motorcycle manufacturer founded immediately after World War II in Noale, Italy, by Alberto Beggio. The company started as a manufacturer of bicycles and moved on to manufacture scooters and small-capacity motorcycles.'
 },
    {
  categname:'Ducati',
  image:'https://res.cloudinary.com/nayo/image/upload/v1677578392/motorbike/ducati_idezfi.png',
  description:'Ducati Motor Holding S.p.A. is an Italian motorcycle-manufacturing company that is part of the Ducati group, and is headquartered in Bologna, Italy. The company is directly owned by Italian automotive manufacturer Lamborghini, whose German parent company is Audi, itself owned by the Volkswagen Group.'
 },
 ] )
puts 'category created!'