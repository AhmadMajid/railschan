class Post
  include Mongoid::Document
  recursively_embeds_many

  field :author
  field :author_email
  field :subject
  field :content
  field :post_number, type: Integer

  key :post_number

  mount_uploader :image, ImageUploader

  embedded_in :board

end
