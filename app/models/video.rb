class Video
  include Mongoid::Document
  field :key, type: String
  field :title, type: String
  field :monetize, type: Array
  field :free, type: Array
  field :block, type: Array
  field :_id, type: String, default: ->{ key }
	index ({title: 1})
	index ({block: 1})
	validates :title, 
		uniqueness: {message: "This key already exists."}, 
		presence: {message: "key can't be blank."}


	def self.search(country_query, video_query)
		p video_query
		# any_of({monetize: country_query.to_sym}, {free: country_query.to_sym}, {title: video_query})
		if video_query.present?
			where(key: video_query)
		else
			not_in(block: country_query.to_sym)
		end
	end

end
