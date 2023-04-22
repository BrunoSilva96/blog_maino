# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :load_post, only: %i[update show destroy]

  def index
    @posts = Post.includes(:comment).order(created_at: :desc).page(params[:page]).per(3)
  end

  def create
    @post = Post.new
    @post.attributes = post_params
    @post.author_id = current_author.id
    redirect_to '/posts' if @post.save!
  end

  def show; end

  def update
    @post.attributes = post_params
    @post.save!
  end

  def destroy
    @post.destroy!
  end

  private

  def load_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:body)
  end
end
