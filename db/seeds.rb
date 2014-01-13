# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.delete_all

for i in 0..99 do
  countries = %i(mx ca cn in  tw us)
  countries.shuffle!
	video = Video.new( key: "Vid0#{i}", title: "Title#{i}", monetize: [], free: [], block: [] )
	video.free << countries.pop(rand(1..3))
	video.free.flatten!
	video.monetize << countries.pop(rand(1..3))
	video.monetize.flatten!
	video.block << countries
	video.block.flatten!
	video.save
end
