# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.delete_all

# countries = %i(mexico canada china india  taiwan us)

for i in 0..99 do
	countries = %i(mexico canada china india  taiwan us)
	video = Video.new( title: "Vid0#{i}", monetize: [], free: [], block: [] )
	video.free << countries.pop(rand(1..3))
	video.monetize << countries.pop(rand(1..3))
	video.block << countries
	

	# for country in countries do
	# 	video.free << country
	# end
	# video.monetize << video.free.shuffle.pop(rand(1..3))
	# video.block << video.free.shuffle.pop(rand(1..3))
	video.save
end
