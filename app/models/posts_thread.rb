class PostsThread
  include Mongoid::Document

  embeds_many :posts

  embedded_in :board, :inverse_of => :posts_threads
end
