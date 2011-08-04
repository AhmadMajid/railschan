class Board
  include Mongoid::Document

  embeds_many :posts_threads
end
