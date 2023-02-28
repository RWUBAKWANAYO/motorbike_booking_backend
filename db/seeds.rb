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

puts 'create motorbike....'
Motorbike.create([
    {
      motor_name:'Toyota Camry',
      year:'2019',
      description:'The Toyota Camry is a mid-size car manufactured by Toyota since 1982, and is the best-selling car in the United States since 2001. It is also the best-selling car in Australia and Japan. The Camry is the best-selling car in the world since 2007, and has been one of the best-selling cars in the United States since 1987.',
      category_id:1,
      price: 200,
      image:"https://res.cloudinary.com/nayo/image/upload/v1665748424/ywfntoo96jobztwiox3o.png"
    },
    {
      motor_name:'Toyota Corolla',
      year:'2008',
      description:'The Toyota Corolla is a subcompact and later a compact car produced by Toyota. Introduced in 1966, the Corolla was the best-selling car worldwide by 1974 and has been one of the best-selling cars in the world since then.',
      category_id:1,
      price: 170,
      image:"https://res.cloudinary.com/nayo/image/upload/v1665748556/h0m952qyrwfk8s1rsmqm.png"
    },
    {
      motor_name: 'Honda Accord',
      year: '2008',
      description: 'The Honda Accord is a series of automobiles manufactured by Honda since 1976, best known for its four-door sedan variant, which has been one of the best-selling cars in the United States since 1989. The Accord nameplate has been applied to a variety of vehicles worldwide, including coupes, wagons, hatchbacks, and a crossover.',
      category_id: 4,
      price: 150,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665748701/w8bwunrlkwc3xr9lmmgy.png'
    },
    {
      motor_name: 'Honda Civic',
      year: '2018',
      description: 'The Honda Civic is a line of cars manufactured by Honda. Originally a subcompact, the Civic has gone through several generational changes, becoming both larger and more upmarket and moving into the compact car segment. EPA guidelines for vehicle size class stipulate a car having combined passenger and cargo room of 110 to 119.9 cubic feet (3.1 to 3.4 m3) is considered a compact car.',
      category_id: 4,
      price: 250,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665748772/hf9evskw1fshurahifo0.png'
    },
    {
      motor_name: 'BMW 3 Series',
      year: '20013',
      description: 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in six different generations. The first generation of the 3 Series consisted of the 316 (1975–1983) and 316i (1977–1983) compact models, followed by the 318 (1982–1991) and 320 (1982–1994) versions of the compact executive car.',
      category_id: 2,
      price: 300,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665748905/y2dqmgiv5b1zi9fzayfw.png'
    },
    {
      motor_name: 'BMW 5 Series',
      year: '2005',
      description: 'The BMW 5 Series is an executive car manufactured by the German automaker BMW since 1972. It is the successor to the New Class Sedans and is currently in its seventh generation. The initial model was only available in a saloon bodystyle. The 5 Series is BMWs most popular model worldwide.',
      category_id: 2,
      price: 190,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665749185/sqdfh4f4tnuqzodtxsks.png'
    },
    {
      motor_name: 'Mercedes Benz C Class',
      year: '2017',
      description: "The Mercedes-Benz C-Class is a line of compact executive cars produced by Daimler AG. Introduced in 1993 as a replacement for the 190 (W201) range, the C-Class was the smallest model in the marque's lineup until the W168 A-Class arrived in 1997. The C-Class is built at Mercedes-Benz factories in Sindelfingen, Germany; Bremen, Germany; and Tuscaloosa, Alabama.",
      category_id: 3,
      price: 280,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665752284/qxoocqswdh55om3hqwak.png'
    },
    {
      motor_name: 'Mercedes Benz E Class',
      year: '2012',
      description: 'The Mercedes-Benz E-Class is a range of executive cars manufactured by German automaker Mercedes-Benz in various engine and body configurations. Produced since 1953, the E-Class falls midrange in the Mercedes line-up and has been marketed worldwide across five generations.',
      category_id: 3,
      price: 250,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665752607/qqs397xal1p9s46s7awx.png'
    },
    {
      motor_name: 'Suzuki GSX-R',
      year: '2019',
      description: 'The Suzuki GSX-R, or GSX-R1000, is a line of sport bikes from Suzuki originally introduced in 1985 as the GSX-R750. It has been updated over the years, and is currently in its sixth generation. The GSX-R is the flagship model in the Suzuki sport bike lineup, and is widely considered one of the best sport bikes in the class.',
      category_id: 5,
      price: 300,
      image: "https://res.cloudinary.com/nayo/image/upload/v1665966776/v9cq6plekh9j1vh9momq.png"
    },
    {
      motor_name: 'Suzuki Hayabusa',
      year: '2021',
      description: 'The Suzuki Hayabusa is a sport bike motorcycle made by Suzuki since 1999. It immediately won acclaim as the worlds fastest production motorcycle, with a top speed of 303 to 312 km/h (188 to 194 mph). The Hayabusa name means Peregrine Falcon in Japanese.',
      category_id: 5,
      price: 220,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665966895/my4ufjiv4r4z0djitpn1.png'
    },
    {
      motor_name: 'TVS R1',
      year: '2015',
      description: 'The TVS YZF-R1, or R1, is an open class sport bike, or superbike, motorcycle manufactured by TVS Motor Company since 1998. It is the successor to the YZF1000R Thunderace, and was first introduced at the Cologne Motorcycle Show in October 1998.',
      category_id: 6,
      price: 250,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665966984/jlgankgjtxfbu7be00v5.png'
    },
    {
      motor_name: 'TVS R6',
      year: '2011',
      description: 'The TVS YZF-R6 is a 600 cc class sport bike motorcycle made by TVS since 1999. It is the successor to the YZF-R7 and has been constantly updated throughout the years in response to new products from Honda, Kawasaki, and Suzuki.',
      category_id: 6,
      price: 200,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1666683973/l0z7lwjjocyqoxvlmbtc.jpg'
    },
    {
      motor_name: 'Triumph 250',
      year: '2019',
      description: 'The Triumph is the trademarked name of several series of Kawasaki sport bikes, that started with the 1984 GPZ900R. The original Ninja 250 was introduced in 1986. The name was derived from the companys prior naming scheme, which designated each model by its engine displacement.',
      category_id: 7,
      price: 300,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665966984/jlgankgjtxfbu7be00v5.png'
    },
    {
      motor_name: 'Triumph Z1000',
      year: '2012',
      description: 'The Triumph Z1000 is a motorcycle in the Ninja sport bike series from the Japanese manufacturer Kawasaki sold since 2003. It was updated in 2006, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019 and 2020.',
      category_id: 7,
      price: 310,
      image: 'https://res.cloudinary.com/nayo/image/upload/v1665748905/y2dqmgiv5b1zi9fzayfw.png'
    }
])
puts 'motorbike created!'