# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Watch.create([
	{name: "Backup Black", description: "lorem ipsum", price_in_pence: 5000, style: "black", gender: "unisex", brand: "Swatch", pre_owned: false, user: User.first }, 
	{name: "Classic Digital Silver/Yellow", description: "lorem ipsum", price_in_pence: 4999, style: "silver with yellow Face", gender: "unisex", brand: "Casio", pre_owned: false, user: User.first }, 
	{name: "Vintage Raketa", description: "lorem ipsum", price_in_pence: 12000, style: "leather strap", brand: "Raketa", gender: "Unisex", pre_owned: true, user: User.first }, 
	{name: "Max Bill Chronoscope", description: "lorem ipsum", price_in_pence: 200000, style: "white face", gender: "unisex", brand: "Jungens", pre_owned: false, user: User.first }
	])