class PostsController < ApplicationController
  # This one shows all the posts
  def index
  end

  # This one shows a single blog post in more detail (probably with comments and stuff)
  def show
    @post = Post.find(params[:id])
  end

  # The actual page where you create a new blog post
  def new
    # you give it a title and a body and
    # then you click submit and it creates
    # the post and then redirects you to
    # the show page for that post
  end

  # You don't actually see this page, this is just where the 
  # the application (rails) actually creates the blog post after you hit submit
  def create
    # lets save the blog to the post in the database
    # Redirect you somewhere,,probably back to the post show page
  end

  # The actual edit page you see and change stuff in the blog post and then click submit and it updates the post and redirects you to the show page for that post
  def edit
  end

  # You don't actually see this page, this is just where the application (rails)
  #  actually updates the blog post after you hit submit on the edit page
  def update
    # Lets save the data to the post in the database
    # Redirect you somewhere,,probably back to the post show page
  end

  # You don't actually see this paage, this is just where the application (rails)
  # actually deletes the blog post.
  # You get here by pressing  the delete button
  def destroy
  end
end
