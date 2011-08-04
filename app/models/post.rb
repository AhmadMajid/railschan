class Post
  include Mongoid::Document
  include ::Paperclip
  include ::Paperclip::Glue

  field :author
  field :author_email
  field :subject
  field :content

  has_attached_file :picture,
    path: ':attachment/:id/:style.:extension',
    storage: :Filesystem

  field :picture_file_name
  field :picture_content_type
  field :picture_file_size, type: String
  field :picture_updated_at, type: DateTime

end
