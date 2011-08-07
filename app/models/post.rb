class Post
  include Mongoid::Document

  field :author
  field :author_email
  field :subject
  field :content

  mount_uploader :image, ImageUploader

  embedded_in :board, :inverse_of => :posts
end
