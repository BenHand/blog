class BlogPostController < ApplicationController

  def index
    render 'index.html.erb', locals: { blog_posts: BlogPost.all }
  end

end
