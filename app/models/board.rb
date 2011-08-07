class Board
  include Mongoid::Document

  field :name
  field :short_name

  key :short_name # Access the board via /b/, e.g.

  embeds_many :posts
end
