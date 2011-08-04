class PostsThread
  include Mongoid::Document

  embeds_many :posts
end
