class Poststhread
  include Mongoid::Document
  embeds_many :posts
end
