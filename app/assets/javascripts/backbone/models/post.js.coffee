class Railschan.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    author: null
    author_email: null
    subject: null
    content: null
  
class Railschan.Collections.PostsCollection extends Backbone.Collection
  model: Railschan.Models.Post
  url: '/posts'