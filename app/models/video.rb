class Video
  include Mongoid::Document
  field :title, type: String
  field :monetize, type: Array
  field :free, type: Array
  field :block, type: Array
end
