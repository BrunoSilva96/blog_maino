# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :load_post, only: %i[update destroy edit]

  def index
    @posts = Post.includes(:comments).order(created_at: :desc).page(params[:page]).per(3)
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_author.id
    redirect_to posts_path if @post.save
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit; end

  def update
    @post.attributes = post_params_update
    redirect_to posts_path if @post.save!
  end

  def destroy
    redirect_to posts_path if @post.destroy
  end

  private

  def load_post
    @post = current_author.posts.find(params[:id])
  end

  def post_params_update
    params.require(:post).permit(:body)
  end

  def post_params
    params.permit(:body)
  end
end
