class BlogPostController < ApplicationController

  def index
    all_posts = BlogPost.all
    render 'index.html.erb', locals: { blog_posts: all_posts }
  end

  def show
    render 'show.html.erb', locals: { blog_posts: BlogPost.find(params[:id]) }
  end

  def new
    render 'new.html.erb', locals: { blog_posts: BlogPost.new }
  end

  def create
    new_post = BlogPost.create(blog_post_params)
    redirect_to "/blog_post/#{new_post.id}"
  end

  def destroy
    BlogPost.destroy(params[:id].to_i)
    redirect_to '/blog_post'
  end

  def edit
    render 'edit.html.erb', locals: { blog_posts: BlogPost.find(params[:id]) }
  end

  def update
    post = BlogPost.find(params[:id])
    post.title = params[:blog_posts]['title']
    post.body = params[:blog_posts]['body']
    post.save!
    updated_post = BlogPost.find(params[:id])
    render 'show.html.erb', locals: { blog_posts: updated_post }
  end

  private

  def blog_post_params
    params.require(:blog_posts).permit(:title, :body)
  end

end
