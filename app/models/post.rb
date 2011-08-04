class Post
  include Mongoid::Document
  field :author
  field :author_email
  field :content
end
