class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  # This one shows all the posts
  def index
    @posts = Post.all
  end

  # This one shows a single blog post in more detail (probably with comments and stuff)
  def show
  end

  # The actual page where you create a new blog post
  def new
    # you give it a title and a body and
    # then you click submit and it creates
    # the post and then redirects you to
    # the show page for that post
    @post = Post.new
  end

  # You don't actually see this page, this is just where the 
  # the application (rails) actually creates the blog post after you hit submit
  def create
    # lets save the blog to the post in the database
    @post = Post.new(post_params)

    if @post.save
      # Takes you to the show page for that post
      # This changes from posts/@post to posts/:id
      # Redirect you somewhere,,probably back to the post show page
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
    # Redirect you somewhere,,probably back to the post show page
  end

  # The actual edit page you see and change stuff in the blog post and then click submit and it updates the post and redirects you to the show page for that post
  def edit
  end

  # You don't actually see this page, this is just where the application (rails)
  #  actually updates the blog post after you hit submit on the edit page
  def update
    # Lets save the data to the post in the database
    # Redirect you somewhere,probably back to the post show page
    if @post.update(post_params)
            redirect_to post_path(@post), notice: "Post was sucessfully updated."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # You don't actually see this paage, this is just where the application (rails)
  # actually deletes the blog post.
  # You get here by pressing  the delete button
  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "Post was successfully deleted."
    else
      redirect_to posts_path(@post), alert: "Failed to delete post."
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
