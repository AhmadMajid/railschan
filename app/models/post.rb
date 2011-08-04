class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :author
  field :author_email
  field :subject
  field :content

  has_mongoid_attached_file :picture
end
